"""Test all asset dataclasses."""

from esdl4tulipa.mapping import asset_types
from esdl4tulipa.mapping import ESDL2TULIPA


def test_asset_types():
    """Test attribute names and types match."""
    for kind, fields in ESDL2TULIPA.items():
        assert asset_types[kind].__annotations__ == dict(fields.values())
