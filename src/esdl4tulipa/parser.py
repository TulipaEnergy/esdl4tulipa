"""Load and parse an ESDL file."""

import contextlib
from dataclasses import fields
from functools import reduce
from io import StringIO
from itertools import chain
from itertools import islice
from typing import Callable
from typing import TypeAlias
from typing import TypeVar
from esdl import esdl
from esdl.esdl_handler import EnergySystemHandler
from pyecore.ecore import EOrderedSet
from tabulate import tabulate
from .mapping import ESDLAssets
from .mapping import asset_types


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


ESDLNode: TypeAlias = esdl.EnergySystem | esdl.Area | esdl.EnergyAsset


def batched(assets: list[esdl.EnergyAsset]):
    """Batched iteration; in itertools from Python >=3.12."""
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


def fill_asset(asset: esdl.EnergyAsset, kind: str = "", **overrides) -> ESDLAssets:
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
    ESDLAssets

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
        return asset_types[kind](**args, **overrides)
    else:
        raise ValueError(f"unsupported {kind=}, not one of {list(asset_types)}")


def merge_assets(asset1: ESDLAssets, asset2: ESDLAssets, **overrides) -> ESDLAssets:
    """Merge two assets (from & to) into a flow asset (transport in esdl).

    Logic: merge and discard.

    - Merge
      - if attribute is missing asset 1 but present in asset 2, accept the 2nd value
      - if both assets have set the same value, accept it
      - if both assets set the value but they aren't equal, raise an error

    - Discard if not a valid :ref:`flow_t` attribute (FIXME: should this precede merge?)

    Parameters
    ----------
    asset1: ESDLAssets
        From asset

    asset2: ESDLAssets
        To asset

    **overrides
        Any attribute overrides

    Returns
    -------
    ESDLAssets

    Raises
    ------
    ValueError
        When attributes have mismatched values

    """
    merged, errs = {}, []
    # NOTE: use vars instead of asdict, I think asdict does a
    # copy. Some pyecore types like EEnumLiteral doesn't like
    # this. The copied values compare unequal even if they are equal
    for (k1, v1), (k2, v2) in zip(vars(asset1).items(), vars(asset2).items()):
        assert k1 == k2, "merging assumes both assets are of the same kind"

        if k1 in ("name", "id"):
            continue

        match v1, v2:
            case (None, None):
                pass
            case (_, None) if v1 is not None:
                merged[k1] = v1
            case (None, _) if v2 is not None:
                merged[k1] = v2
            case _ if v1 == v2:
                merged[k1] = v1
            case _ if v1 != v2:
                errs.append((k1, v1, v2))

    if len(errs) > 0:
        tbl = tabulate(errs, headers=("column", "from", "to"))
        raise ValueError(f"mismatching assets: {asset1.name} != {asset2.name}\n {tbl}")

    flow_t = asset_types["transport"]
    _fields = {f.name for f in fields(flow_t)}
    merged = {k: v for k, v in merged.items() if k in _fields}
    return flow_t(**merged, **overrides)


def kinds(*assets: esdl.EnergyAsset) -> set[str]:
    """Find and return `kinds` for all assets.

    Raises
    ------
    RuntimeError
        If one asset resolves to multiple kinds

    """
    res: set[str] = set()
    for a in assets:
        ks = {k for k, t in _kind_ts.items() if isinstance(a, t)}
        if len(ks) > 1:
            if ks == {"energynetwork", "transport"}:
                res = res.union({"energynetwork"})
            else:
                raise RuntimeError(f"{a}: unexpected asset type {ks}")
        else:
            res = res.union(ks)
    return res


def edge(*assets: esdl.EnergyAsset) -> tuple[ESDLAssets, ESDLAssets, ESDLAssets]:
    """Create a Tulipa flow, and assets from ESDL assets.

    Parameters
    ----------
    *assets: esdl.EnergyAsset
        Set of ESDL assets to link and convert.

    Returns
    -------
    tuple[ESDLAssets, ...]
        Tuple of (flow, from_asset, to_asset)

    Raises
    ------
    ValueError
        When connection pattern don't match either of:

        .. code::

           asset1: producer | conversion | storage | energynetwork
           asset2: producer | conversion | storage | energynetwork

           (asset1, asset2)

           link: transport

           (asset1, link, asset)

    """
    # FIXME: some (from, to) pairs are probably unphysical
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
        ) if len(kinds(a1, a2)) == 2:
            from_asset, to_asset = map(fill_asset, assets)
            flow = merge_assets(
                from_asset, to_asset, from_asset=from_asset.name, to_asset=to_asset.name
            )
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
        ) if not isinstance(link, esdl.EnergyNetwork) and len(kinds(a1, a2)) == 2:
            from_asset = fill_asset(a1)
            to_asset = fill_asset(a2)
            flow = fill_asset(link, from_asset=a1.name, to_asset=a2.name)
        case _:
            # NOTE: unhandled case: asset, transport, ..., asset
            raise ValueError(f"{assets=}: uncharted territory!")

    return (flow, from_asset, to_asset)


def itr_edges(
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
        Subsequent call to :ref:`hop_edges` increments depth by 1.

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
            hop_edges(_asset, edges, depth + 1)
    return edges


def hop_edges(
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
            itr_edges(asset, edges, depth)
        case esdl.Transport() if depth == 2 and not isinstance(
            asset, esdl.EnergyNetwork
        ):
            edges.append(asset)
            itr_edges(asset, edges, depth)
        case (
            esdl.Consumer() | esdl.Conversion() | esdl.Storage() | esdl.EnergyNetwork()
        ) if depth > 1:
            edges.append(asset)
        case _:
            raise ValueError(f"{asset}: why am I here? {depth=}")
    return edges


def find_edges(asset: esdl.EnergyAsset) -> list[tuple[ESDLAssets, ...]]:
    """Find all out going flows from the provided asset."""
    if (edges := hop_edges(asset, [])) and len(edges) > 1:
        from_asset, *rest = edges
        return [edge(from_asset, *assets) for assets in batched(rest)]
    else:
        return []


res_t = TypeVar("res_t", tuple, list, set, dict, esdl.EnergyAsset)


def parse_graph(
    obj: ESDLNode | EOrderedSet,
    predicate: Callable[[esdl.EnergyAsset], list[res_t] | res_t],
    res: list[res_t],
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

    Returns
    -------
    list[res_t]
        Same as `res` above (res_t: dict | tuple | esdl.EnergyAsset).

    """
    match obj:
        case EOrderedSet():
            for el in obj:
                parse_graph(el, predicate, res)
        case esdl.EnergySystem() if isinstance(obj.instance, esdl.EOrderedSet):
            parse_graph(obj.instance, predicate, res)
        case esdl.Instance():
            parse_graph(obj.area, predicate, res)
        case esdl.Area():
            if isinstance(obj.area, EOrderedSet):  # may contain sub-areas
                parse_graph(obj.area, predicate, res)
            if isinstance(obj.asset, EOrderedSet):  # may also contain assets
                parse_graph(obj.asset, predicate, res)
        case (esdl.Producer() | esdl.Conversion() | esdl.Storage()) as asset:
            if hasattr(asset, "name"):
                match predicate(asset):
                    case list() as _interim:
                        res.extend(_interim)
                    case _interim:
                        res.append(_interim)
        case esdl.Transport() | esdl.Consumer():
            pass  # only following out going flows
        case _:
            raise ValueError(f"{obj}: unsupported value")
    return res


def load(path: str) -> tuple[tuple[ESDLAssets, ...], tuple[ESDLAssets, ...]]:
    """Load ESDL file and parse nodes."""
    with contextlib.redirect_stdout(StringIO()):
        ensys = _HANDLER.load_file(path)
    edges = parse_graph(ensys, find_edges, [])
    flows = tuple(edge[0] for edge in edges)
    assets: tuple[ESDLAssets, ...] = tuple(set(chain(*(edge[1:] for edge in edges))))
    return flows, assets


def debug(path: str) -> esdl.EnergySystem:
    """Load ESDL file and parse nodes for debugging."""
    with contextlib.redirect_stdout(StringIO()):
        return _HANDLER.load_file(path)
