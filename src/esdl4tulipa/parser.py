"""Load and parse an ESDL file."""

import contextlib
from dataclasses import fields
from functools import reduce
from io import StringIO
from itertools import chain
from typing import Callable
from typing import Generator
from typing import TypeAlias
from typing import TypeVar
from typing import cast
from esdl import esdl
from esdl.esdl_handler import EnergySystemHandler
from pyecore.ecore import EOrderedSet
from tabulate import tabulate
from .mapping import TAssets
from .mapping import asset_types
from .mapping import flow_t

_HANDLER = EnergySystemHandler()

# Map Tulipa flow/asset kinds to corresponding ESDL base types.
_kind_ts = {
    kind: esdl_type
    for name in dir(esdl)
    if not name.startswith("_")
    for kind in asset_types
    if kind == name.casefold()
    and (esdl_type := getattr(esdl, name))
    and isinstance(esdl_type, type)
    and issubclass(esdl_type, esdl.EnergyAsset)
}
# NOTE: EnergyNetwork is a subtype of Transport, this introduces
# ambiguity when trying to detect either.  This is mitigated by
# relying on order dependence of case statements in Python's
# structural pattern matching, and adding guard clauses, see:
# https://peps.python.org/pep-0636/#matching-multiple-patterns


def kinds(*assets: esdl.EnergyAsset, unique=True) -> list[str] | set[str]:
    """Find and return `kinds` for all assets.

    The implementation hardcodes the resolution between a generic
    'transport' asset and an 'energynetwork'.

    Raises
    ------
    RuntimeError
        If one asset resolves to multiple kinds unexpectedly. This may
        happen when the inheritance tree on the ESDL side has
        ambiguity.  It needs to be explicitly resolved, as done for
        the case of 'transport' and 'energynetwork'.

    """
    res: list[str] = []
    for a in assets:
        ks = {k for k, t in _kind_ts.items() if isinstance(a, t)}
        if len(ks) > 1:
            if ks == {"energynetwork", "transport"}:
                res.append("energynetwork")
            else:
                raise RuntimeError(f"{a}: unexpected asset type {ks}")
        else:
            res.extend(ks)
    return set(res) if unique else res


def batched(
    assets: list[esdl.EnergyAsset],
) -> Generator[list[esdl.EnergyAsset], None, None]:
    """Partition a sequence of assets based on allowed terminating nodes.

    Parameters
    ----------
    assets: list[esdl.EnergyAsset]
        Sequence of assets that comprise of trailing edges (in
        technical term: `cdr` of an edge).  Example, the following
        edges:

        - (from, link, to) -> (link, to)
        - (from, to₂) -> (to)
        - (from, ...)

        are represented as the sequence: (link, to₁, to₂, ...)

    Returns
    -------
    Generator[list[esdl.EnergyAsset], None, None]
        A generator over the partitioned trailing edges

    """
    batch = []
    for asset in assets:
        batch.append(asset)
        match asset:
            case (
                esdl.Consumer()
                | esdl.Conversion()
                | esdl.Storage()
                | esdl.EnergyNetwork()
            ):
                yield batch
                batch = []
            case _:
                pass


def fill_asset(asset: esdl.EnergyAsset, kind: str = "", **overrides) -> TAssets:
    """Fill asset dataclasses.

    Parameters
    ----------
    asset : esdl.EnergyAsset
        ESDL Asset object

    kind : Literal['consumer', 'producer', 'conversion', 'storage', 'transport']
        Kind of assets according to Tulipa; by default infer by string
        matching against ESDL asset types (see: `_kind_ts`).

    **overrides
        Any attribute overrides

    Returns
    -------
    TAssets

    """
    if not kind:
        (kind, _), *_ = filter(lambda i: isinstance(asset, i[1]), _kind_ts.items())

    if asset_t := asset_types.get(kind):
        args = {
            tulipa_key: val
            for tulipa_key in asset_t.fields()
            if (
                val := reduce(
                    lambda obj, key: getattr(obj, key, None),
                    asset_t.esdl_key(tulipa_key).split("."),
                    asset,
                )
            )
        }
        # NOTE: don't merge by unpacking together:
        #
        #   dataclass_t(**args, **overrides)
        #
        # as it may create duplicate keyword arguments (TypeError)
        args.update(overrides)
        return asset_types[kind](**args)
    else:
        raise ValueError(f"unsupported {kind=}, not one of {list(asset_types)}")


def merge_assets(asset1: TAssets, asset2: TAssets, **overrides) -> flow_t:
    """Merge two assets (from & to) into a flow asset (transport in esdl).

    Logic: discard invalid, and merge.

    - Discard if not a valid :ref:`flow_t` attribute

    - Merge
      - if attribute is missing in asset 1 but present in asset 2, accept the value
      - if both assets have set the same value, accept it
      - if both assets set the value but they aren't equal, raise an error

    Parameters
    ----------
    asset1: TAssets
        From asset

    asset2: TAssets
        To asset

    **overrides
        Any attribute overrides

    Returns
    -------
    TAssets

    Raises
    ------
    ValueError
        When attributes have mismatched values

    """
    _fields = [f.name for f in fields(flow_t)]
    errs = []
    # NOTE: use vars instead of asdict, I think asdict does a
    # copy. Some pyecore types like EEnumLiteral doesn't like
    # this. The copied values compare unequal even if they are equal
    merged = {
        "from_asset": asset1.name,
        "to_asset": asset2.name,
        **{k: v for k, v in vars(asset1).items() if k in _fields},
    }
    for key, val in vars(asset2).items():
        if key in ("name", "id"):
            continue

        if key not in _fields:
            continue

        # NOTE: empty values are `None` or `""`
        if (v1 := merged.get(key)) and v1 != val:
            errs.append((key, v1, val))
        else:
            merged[key] = val

    if len(errs) > 0:
        tbl = tabulate(errs, headers=("column", "from", "to"))
        raise ValueError(f"mismatching assets: {asset1.name} != {asset2.name}\n {tbl}")

    merged.pop("name")
    merged.pop("id")

    # see NOTE: about merging in `fill_asset`
    merged.update(overrides)
    return flow_t(**merged)


def edge_is_allowed(*assets: esdl.EnergyAsset) -> bool:
    """Check if the asset combination defines a valid Tulipa edge/flow.

    Valid Tulipa edges are:

    - (asset1, asset2) ->
      - asset1 ∈ {producer, conversion, storage, energynetwork}
      - asset2 ∈ {consumer, conversion, storage, energynetwork}
      - FIXME: some of the above combinations are impossible
    - (asset1, link, asset2) -> same conditions on asset1, asset2
      - link is a transport, but not an energynetwork

    NOTE: this function cannot be used on it's own.  It is meant for
    use in conjunction with a match..case (or equivalent) statement;
    see :ref:`edge` below.

    """
    if len(assets) == 2:
        a1, a2 = assets
    elif len(assets) == 3:
        a1, link, a2 = assets
        if isinstance(link, esdl.EnergyNetwork):
            raise ValueError(f"{link=}: link node cannot be an energynetwork")
    else:
        raise ValueError(f"{assets=}: incorrect number of assets, only {{2,3}}")
    _kinds = kinds(a1, a2, unique=True)
    return {"energynetwork"} == _kinds if len(_kinds) < 2 else True


def edge(*assets: esdl.EnergyAsset) -> tuple[flow_t, TAssets, TAssets]:
    """Create a Tulipa flow, and assets from ESDL assets.

    Parameters
    ----------
    *assets: esdl.EnergyAsset
        Set of ESDL assets to link and convert.

    Returns
    -------
    tuple[TAssets, ...]
        Tuple of (flow, from_asset, to_asset)

    Raises
    ------
    ValueError
        When connection pattern don't match either of:

        .. code::

           asset1: producer | conversion | storage | energynetwork
           asset2: consumer | conversion | storage | energynetwork

           (asset1, asset2)

           link: transport

           (asset1, link, asset)

    """
    # FIXME: some (from, to) pairs are probably impossible
    match assets:
        case (
            esdl.Producer()
            | esdl.Conversion()
            | esdl.Storage()
            | esdl.EnergyNetwork() as a1,
            esdl.Consumer()
            | esdl.Conversion()
            | esdl.Storage()
            | esdl.EnergyNetwork() as a2,
        ) if edge_is_allowed(a1, a2):
            from_asset, to_asset = map(fill_asset, assets)
            flow = merge_assets(from_asset, to_asset)
        case (
            esdl.Producer()
            | esdl.Conversion()
            | esdl.Storage()
            | esdl.EnergyNetwork() as a1,
            esdl.Transport() as link,
            esdl.Consumer()
            | esdl.Conversion()
            | esdl.Storage()
            | esdl.EnergyNetwork() as a2,
        ) if edge_is_allowed(a1, link, a2):
            # NOTE: len(kinds(...)) <= 2 to support EnergyNetwork -> EnergyNetwork
            from_asset = fill_asset(a1)
            to_asset = fill_asset(a2)
            flow = cast(
                flow_t,
                # reset 'name' & 'id' for flow
                fill_asset(link, from_asset=a1.name, to_asset=a2.name, name="", id=""),
            )
        case _:
            # NOTE: unhandled case: asset, transport, ..., asset
            raise ValueError(f"{assets=}: uncharted territory!")

    return (flow, from_asset, to_asset)


def itr_nodes(
    asset: esdl.EnergyAsset, edges: list[esdl.EnergyAsset], depth: int
) -> list[esdl.EnergyAsset]:
    """Iterate over outgoing ports from an asset, and find the next asset.

    Parameters
    ----------
    asset : esdl.EnergyAsset
        Iterate over outgoing ports of this asset

    edges : list[esdl.EnergyAsset]
        List accumulating assets that form edges.

    depth : int
        Counter keeping track of number of assets encountered; if this
        exceeds 2 and recursion continues, raise :ref:`RecursionError`.
        Subsequent call to :ref:`hop_nodes` increments depth by 1.

    Returns
    -------
    list[esdl.EnergyAsset]

    """
    if depth > 3:
        raise RecursionError(f"{depth=}: trying to find an edge beyond 2 hops")

    if not isinstance(asset.port, EOrderedSet):
        raise ValueError(f"{asset}: unsupported, doesn't have {asset.port=}")

    for _port1 in asset.port:
        if isinstance(_port1, esdl.InPort):
            continue
        for _port2 in _port1.connectedTo:
            if _port1 == _port2:  # loop, don't know if it's likely
                continue
            if isinstance(_port2, esdl.OutPort):
                continue
            _asset = _port2.energyasset
            hop_nodes(_asset, edges, depth + 1)
    return edges


def hop_nodes(
    asset: esdl.EnergyAsset, edges: list[esdl.EnergyAsset], depth: int = 1
) -> list[esdl.EnergyAsset]:
    """Find all the assets that have an incoming flow from initially provided asset.

    Parameters
    ----------
    asset : esdl.EnergyAsset
        Starting point of edge search, or an intermediate
        :ref:`esdl.Transport` asset (excluding
        :ref:`esdl.EnergyNetwork`).

    edges : list[esdl.EnergyAsset]
        List accumulating assets that form edges.

    depth : int (default: 1)
        Counter keeping track of number of assets encountered; if this
        exceeds 2 and recursion continues, raise :ref:`RecursionError`.

    Returns
    -------
    list[esdl.EnergyAsset]
        Accumulated list of assets that form edges (same as the
        parameter `edges`) in the format:

            [from_asset, to_asset1, link, to_asset2, ...]

        where the edges are:

            (from_asset, to_asset1), (from_asset, link, to_asset2), ...

    """
    match asset:
        case (
            esdl.Producer() | esdl.Conversion() | esdl.Storage() | esdl.EnergyNetwork()
        ) if depth == 1:
            edges.append(asset)
            itr_nodes(asset, edges, depth)
        case esdl.Transport() if depth == 2 and not isinstance(
            asset, esdl.EnergyNetwork
        ):
            edges.append(asset)
            itr_nodes(asset, edges, depth)
        case (
            esdl.Consumer() | esdl.Conversion() | esdl.Storage() | esdl.EnergyNetwork()
        ) if depth > 1:
            edges.append(asset)
        case _:
            raise ValueError(f"{asset}: why am I here? {depth=}")
    return edges


res_t = TypeVar("res_t", tuple, list, set, dict, esdl.EnergyAsset)


def find_edges(
    asset: esdl.EnergyAsset,
    process: Callable[..., res_t] = edge,  # type: ignore[assignment]
) -> list[res_t]:
    """Find all out going flows from the provided asset."""
    if (edges := hop_nodes(asset, [])) and len(edges) > 1:
        from_asset, *rest = edges
        return [process(from_asset, *assets) for assets in batched(rest)]
    else:
        return []


def _apply(
    predicate: Callable[[esdl.EnergyAsset], list[res_t] | res_t],
    asset: esdl.EnergyAsset,
    res: list[res_t],
) -> list[res_t]:
    if hasattr(asset, "name"):
        match predicate(asset):
            case list() as _interim:
                res.extend(_interim)
            case _interim:
                res.append(_interim)
    return res


ESDLNode: TypeAlias = esdl.EnergySystem | esdl.Area | esdl.EnergyAsset


def parse_graph(
    obj: ESDLNode | EOrderedSet,
    predicate: Callable[[esdl.EnergyAsset], list[res_t] | res_t],
    res: list[res_t],
    visit_all: bool = False,
) -> list[res_t]:
    """Parse ecore object to extract node attributes and connections.

    Parameters
    ----------
    obj : ESDLNode | EOrderedSet
        ESDL object, or an ordered set of ESDL objects

    predicate : Callable[[esdl.EnergyAsset], list[res_t] | res_t]
        Function predicate that is applied on all assets, to find an
        edge that originates at that asset.

    res : list[res_t]
        Edges that are found are inserted into this list.  Each edge
        is represented as a tuple: tuple[str, str, <dataclass>]; the
        dataclass has edge properties determined by combining the
        properties of the nodes connected by the edge.

    visit_all : bool (default: False)
        If `True`, visit all supported nodes instead of limiting to
        nodes with outgoing edges.

    Returns
    -------
    list[res_t]
        Same as `res` above (res_t: dict | tuple | esdl.EnergyAsset).

    """
    match obj:
        case EOrderedSet():
            for el in obj:
                parse_graph(el, predicate, res, visit_all=visit_all)
        case esdl.EnergySystem() if isinstance(obj.instance, esdl.EOrderedSet):
            parse_graph(obj.instance, predicate, res, visit_all=visit_all)
        case esdl.Instance():
            parse_graph(obj.area, predicate, res, visit_all=visit_all)
        case esdl.Area():
            if isinstance(obj.area, EOrderedSet):  # may contain sub-areas
                parse_graph(obj.area, predicate, res, visit_all=visit_all)
            if isinstance(obj.asset, EOrderedSet):  # may also contain assets
                parse_graph(obj.asset, predicate, res, visit_all=visit_all)
        case (
            esdl.Producer() | esdl.Conversion() | esdl.Storage() | esdl.EnergyNetwork()
        ) as asset:
            _apply(predicate, asset, res)
        case (esdl.Transport() | esdl.Consumer()) as asset:
            if visit_all:  # only follow out going flows by default
                _apply(predicate, asset, res)
        case _:
            raise ValueError(f"{obj}: unsupported node")
    return res


def load(path: str) -> tuple[tuple[flow_t, ...], tuple[TAssets, ...]]:
    """Load ESDL file and parse nodes."""
    with contextlib.redirect_stdout(StringIO()):
        ensys = _HANDLER.load_file(path)
    edges = parse_graph(ensys, find_edges, [])
    flows: tuple[flow_t] = tuple(edge[0] for edge in edges)
    assets: tuple[TAssets, ...] = tuple(set(chain(*(edge[1:] for edge in edges))))
    return flows, assets


def debug(path: str) -> esdl.EnergySystem:
    """Load ESDL file and parse nodes for debugging."""
    with contextlib.redirect_stdout(StringIO()):
        return _HANDLER.load_file(path)
