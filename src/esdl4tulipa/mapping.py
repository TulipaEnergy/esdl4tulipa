"""Mapping ESDL to Tulipa terminology."""

from copy import deepcopy
from dataclasses import field
from dataclasses import is_dataclass
from dataclasses import make_dataclass

_base = {"name": ("name", str), "id": ("id", str), "state": ("active", bool)}
_producers = {
    **_base,
    "costInformation.investmentCosts.value": ("investment_cost", float),
    "costInformation.variableOperationalAndMaintenanceCosts.value": (
        "variable_cost",
        float,
    ),
    "technicalLifetime": ("lifetime", float),
    "power": ("initial_capacity", float),
}
_storage = deepcopy(_producers)
_storage.pop("power")

ESDL2TULIPA = {
    "consumers": {
        **_base,
        "power": ("peak_demand", float),
    },
    "producers": {**_producers},
    "conversion": {
        **_producers,
        "efficiency": ("efficiency", float),
        # "inputOutputRelation": ("efficiency", float),  # FIXME: duplicate
    },
    "storage": {
        **_storage,
        "maxDischargeRate": ("capacity", float),
        # "maxChargeRate": ("capacity", float),  # FIXME: duplicate
        "fillLevel": ("initial_storage_level", float),
        "capacity": ("initial_storage_capacity", float),
    },
}


def make_asset_t(kind: str) -> type:
    """Create dataclass from list of fields and types.

    Parameters
    ----------
    kind : Literal['consumers', 'producers', 'conversion', 'storage']
        The fields are defined in the module level dictionary
        `ESDL2TULIPA`.  They are separated by asset type: 'consumers',
        'producers', 'conversion', 'storage'.

    Returns
    -------
    <custom_dataclass>

    """
    if kind not in ESDL2TULIPA:
        raise ValueError(f"unknown {kind=}, not one of {list(ESDL2TULIPA)}")

    def __post_init__(self):
        for key, field_t in self.__annotations__.items():
            value = getattr(self, key)
            if not is_dataclass(field_t) or isinstance(value, dict):
                continue
            setattr(self, key, field_t(**value))

    fields = [
        (*f, field(default=None)) if len(f) == 2 else f
        for f in ESDL2TULIPA[kind].values()
    ]
    return make_dataclass(
        f"{kind}_t", fields, namespace={"__post_init__": __post_init__}
    )


# create dataclasses for each kind, so the types can be reused, and
# created instances will be of the same type
asset_types = {kind: make_asset_t(kind) for kind in ESDL2TULIPA}
