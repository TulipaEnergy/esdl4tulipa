from dataclasses import make_dataclass
import pytest

from esdl import esdl
from esdl.esdl_handler import EnergySystemHandler

import esdl4tulipa
from esdl4tulipa.parser import fill_asset
from esdl4tulipa.parser import merge_assets
from esdl4tulipa.parser import parse_graph


@pytest.fixture
def assets():
    handler = EnergySystemHandler()
    ensys = handler.load_file("tests/data/esdl/norse-mythology-good.esdl")
    return parse_graph(ensys, lambda i: i, [])


def test_fill_asset(assets):
    for asset in assets:
        if isinstance(asset, esdl.Transport):
            with pytest.raises(ValueError):
                fill_asset(asset)
        else:
            assert fill_asset(asset)


def test_merge_assets():
    fields = [("name", str), ("num", int), ("flag", bool)]
    my_type = make_dataclass("my_type", fields)

    values = [("foo", 42, None), ("bar", 42, False), ("baz", 42, None)]
    expect = [(42, False), (42, False)]

    npairs = len(values) - 1
    for i in range(npairs):
        data1 = my_type(*values[i])
        data2 = my_type(*values[i + 1])
        assert tuple(merge_assets(data1, data2).values()) == expect[i]


def test_merge_assets_err():
    fields = [("name", str), ("num", int), ("flag", bool)]
    my_type = make_dataclass("my_type", fields)

    values = [("foo", 42, None), ("bar", 0, None)]

    data1 = my_type(*values[0])
    data2 = my_type(*values[1])
    hdr = f"{values[0][0]} != {values[1][0]}"
    body = f"{fields[1][0]}.+42.+0"
    with pytest.raises(ValueError, match=f"{hdr}[\s\S]+{body}"):
        assert merge_assets(data1, data2)
