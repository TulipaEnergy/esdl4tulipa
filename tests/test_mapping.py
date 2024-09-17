"""Test all asset dataclasses."""

from dataclasses import dataclass
from esdl4tulipa.mapping import AssetData
from esdl4tulipa.mapping import asset_types
from esdl4tulipa.mapping import _keys_not_in_esdl
from esdl4tulipa.mapping import _cost_n_lifetime_t
import pytest
import re


@dataclass(unsafe_hash=True)
class Leaf(AssetData):
    random: int = 42


@dataclass(unsafe_hash=True)
class Nested(AssetData):
    flag: bool = True
    seed: Leaf = Leaf()


def test_nesting_asset_types():
    nest = Nested()
    assert isinstance(nest.seed, Leaf)
    assert nest.seed.random == 42

    data = {"flag": False, "seed": {"random": 5}}
    nest = Nested(**data)
    assert not nest.flag
    assert isinstance(nest.seed, Leaf)
    assert nest.seed.random == 5


@pytest.mark.parametrize("kind", list(asset_types))
def test_asset_types(kind: str):
    """Test asset types are default constructable, and hashable."""
    assert hash(asset_types[kind]())


@pytest.mark.parametrize("kind", list(asset_types))
def test_esdl_key(kind):
    asset = asset_types[kind]()

    # test examples
    key_re = re.compile(r"cost|lifetime")
    esdl_re = re.compile(r"costInformation\..+\.value|technicalLifetime")

    for fld in asset.fields():
        try:
            assert asset.esdl_key(fld)
        except AssertionError:
            if fld in _keys_not_in_esdl:
                pass
            else:
                raise

        if isinstance(asset, _cost_n_lifetime_t) and key_re.match(fld):
            assert esdl_re.match(asset.esdl_key(fld))
