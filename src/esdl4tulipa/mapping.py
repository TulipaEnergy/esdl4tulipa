"""Mapping ESDL to Tulipa terminology."""

from dataclasses import dataclass
from dataclasses import fields
from dataclasses import is_dataclass
from typing import Type
from typing import TypeVar
from typing import Union

T = TypeVar("T")


def unguarded_is_dataclass(_type: Type[T], /) -> bool:
    """Remove :ref:`TypeGuard` from is_dataclass.

    see: https://github.com/python/mypy/issues/14941
    """
    return is_dataclass(_type)


@dataclass(unsafe_hash=True)
class AssetData:
    """Base dataclass to represent :ref:`esdl.esdl.EnergyAsset`."""

    name: str = ""
    id: str = ""
    active: bool = False

    @classmethod
    def esdl_key(cls, key: str) -> str:
        """Get corresponding ESDL attribute."""
        _esdl_key = {"name": "name", "id": "id", "active": "state.value"}
        return _esdl_key.get(key, "")

    @classmethod
    def fields(cls) -> list[str]:
        """Fields of the dataclass."""
        return [fld.name for fld in fields(cls)]

    # FIXME: add type validation
    def __post_init__(self):  # noqa: D105
        for key, field_t in self.__annotations__.items():
            value = getattr(self, key)
            if not unguarded_is_dataclass(field_t) or isinstance(value, dict):
                continue
            setattr(self, key, field_t(**value))


@dataclass(unsafe_hash=True)
class hub_t(AssetData):  # noqa: D101
    pass


@dataclass(unsafe_hash=True)
class consumer_t(AssetData):  # noqa: D101
    peak_demand: float | None = None

    @classmethod
    def esdl_key(cls, key: str) -> str:  # noqa: D102
        if res := super().esdl_key(key):
            return res
        else:
            _esdl_key = {"peak_demand": "power"}
            return _esdl_key.get(key, "")


@dataclass(unsafe_hash=True)
class _producer_t(AssetData):  # noqa: D101
    investment_cost: float | None = None
    variable_cost: float | None = None
    lifetime: float | None = None

    @classmethod
    def esdl_key(cls, key: str) -> str:  # noqa: D102
        if res := super().esdl_key(key):
            return res
        else:
            _esdl_key = {
                "investment_cost": "costInformation.investmentCosts.value",
                "variable_cost": "costInformation.variableOperationalAndMaintenanceCosts.value",  # noqa: E501
                "lifetime": "technicalLifetime",
            }
            return _esdl_key.get(key, "")


@dataclass(unsafe_hash=True)
class producer_t(_producer_t):  # noqa: D101
    initial_capacity: float | None = None

    @classmethod
    def esdl_key(cls, key: str) -> str:  # noqa: D102
        if res := super().esdl_key(key):
            return res
        else:
            _esdl_key = {"initial_capacity": "power"}
            return _esdl_key.get(key, "")


@dataclass(unsafe_hash=True)
class conversion_t(producer_t):  # noqa: D101
    efficiency: float | None = None

    @classmethod
    def esdl_key(cls, key: str) -> str:  # noqa: D102
        if res := super().esdl_key(key):
            return res
        else:
            _esdl_key = {
                "efficiency": "efficiency"
                # "efficiency": "inputOutputRelation",  # FIXME: duplicate
            }
            return _esdl_key.get(key, "")


@dataclass(unsafe_hash=True)
class storage_t(AssetData):  # noqa: D101
    capacity: float | None = None
    initial_storage_level: float | None = None
    initial_storage_capacity: float | None = None

    @classmethod
    def esdl_key(cls, key: str) -> str:  # noqa: D102
        if res := super().esdl_key(key):
            return res
        else:
            _esdl_key = {
                "capacity": "maxDischargeRate",
                # "capacity": "maxChargeRate",  # FIXME: duplicate
                "initial_storage_level": "fillLevel",
                "initial_storage_capacity": "capacity",
            }
            return _esdl_key.get(key, "")


@dataclass(unsafe_hash=True)
class flow_t(_producer_t):  # noqa: D101
    from_asset: str = ""
    to_asset: str = ""
    capacity: float | None = None
    efficiency: float | None = None

    @classmethod
    def esdl_key(cls, key: str) -> str:  # noqa: D102
        if res := super().esdl_key(key):
            return res
        else:
            _esdl_key = {
                "capacity": "capacity",
                "efficiency": "efficiency",
            }
            return _esdl_key.get(key, "")


ESDLAssets = Union[hub_t, consumer_t, producer_t, conversion_t, storage_t, flow_t]
asset_types: dict[str, type[ESDLAssets]] = {
    "energynetwork": hub_t,
    "consumer": consumer_t,
    "producer": producer_t,
    "conversion": conversion_t,
    "storage": storage_t,
    "transport": flow_t,
}
