"""Load and parse an ESDL file."""

from typing import Callable
from esdl import esdl
from esdl.esdl_handler import EnergySystemHandler
from glom import glom
from pyecore.ecore import EObject
from pyecore.ecore import EOrderedSet
from tabulate import tabulate
from .mapping import ESDL2TULIPA
from .mapping import asset_types

_HANDLER = EnergySystemHandler()

_kind_ts = {
    kind: esdl_type
    for name in dir(esdl)
    if not name.startswith("_")
    for kind in ESDL2TULIPA
    if name.casefold() == kind
    and (esdl_type := getattr(esdl, name))
    and isinstance(esdl_type, type)
    and issubclass(esdl_type, esdl.EnergyAsset)
}


def fill_asset(asset: EObject, kind: str = ""):
    """Fill asset dataclasses.

    Parameters
    ----------
    asset : EObject
        ESDL Asset object

    kind : Literal['consumers', 'producers', 'conversion', 'storage']
        Kind of assets according to Tulipa; by default infer by string
        matching against ESDL asset types (see: `_kind_ts`).

    Returns
    -------
    <asset_dataclass>

    """
    if not kind:
        for k, t in _kind_ts.items():
            if isinstance(asset, t):
                kind = k
                break

    if kind not in asset_types:
        raise ValueError(f"unknown {kind=}, not one of {list(asset_types)}")

    args = {
        tulipa_key: val
        for esdl_key, (tulipa_key, _) in ESDL2TULIPA[kind].items()
        if (val := glom(asset, esdl_key, default=None))
    }
    return asset_types[kind](**args)


def merge_assets(asset1, asset2) -> dict:
    """Merge two asset dataclasses.

    Logic:
    - if for asset 1 it's missing and asset 2 is present, accept value set with asset 2
    - if asset 1 and asset 2 has set the same value, accept it
    - if both assets set the value but they aren't equal, raise an error

    Returns
    -------
    dict

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
    return merged


def edge(out_port, in_port) -> dict:
    """Find the edge that connects the OutPort to the InPort."""
    # TODO: customisable merge, how to choose kind?
    asset1, asset2 = [fill_asset(port.energyasset) for port in (out_port, in_port)]
    merged = merge_assets(asset1, asset2)
    return {"from": asset1.name, "to": asset2.name, **merged}


def find_edge(asset: EObject) -> list[dict]:
    """Find all out going connections to other assets."""
    return [
        edge(port, in_port)
        for port in asset.port
        if isinstance(port, esdl.OutPort)
        for in_port in port.connectedTo
    ]


def parse_graph(
    obj: EObject | EOrderedSet,
    predicate: Callable[[EObject], list[dict]],
    res: list[dict],
):
    """Parse ecore object to extract node attributes and connections.

    Parameters
    ----------
    obj : EObject | EOrderedSet
        ESDL object, or an ordered set of ESDL objects

    predicate : Callable[[EObject], list[tuple]]
        Function predicate that is applied on all assets, to find an
        edge that originates at that asset.

    res : list[tuple]
        Edges that are found are inserted into this list.  Each edge
        is represented as a tuple: tuple[str, str, <dataclass>]; the
        dataclass has edge properties determined by combining the
        properties of the nodes connected by the edge.

    Returns
    -------
    list[tuple]
        Same as `res` above.

    """
    match obj:
        case EOrderedSet():
            for el in obj:
                parse_graph(el, predicate, res)
        case EObject():
            if (obj_asset := getattr(obj, "asset", None)) and len(obj_asset) > 0:
                for asset in obj_asset:
                    if not hasattr(asset, "name"):
                        continue
                    match predicate(asset):
                        case list() as _interim:
                            res.extend(_interim)
                        case _interim:
                            res.append(_interim)

            if getattr(obj, "area", None):
                parse_graph(obj.area, predicate, res)

            if getattr(obj, "instance", None):
                parse_graph(obj.instance, predicate, res)
        case _:
            raise ValueError(f"{obj}: unsupported value")
    return res


def load(path: str):
    """Load ESDL file and parse nodes."""
    ensys = _HANDLER.load_file(path)
    edges = parse_graph(ensys, find_edge, [])
    return edges


def debug(path: str):
    """Load ESDL file and parse nodes."""
    return _HANDLER.load_file(path)
