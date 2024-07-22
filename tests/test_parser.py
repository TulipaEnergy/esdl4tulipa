from itertools import chain
import pytest

from esdl import esdl

from esdl4tulipa.mapping import asset_types
from esdl4tulipa.parser import batched, edge_is_allowed, find_edges, load
from esdl4tulipa.parser import debug
from esdl4tulipa.parser import edge
from esdl4tulipa.parser import fill_asset
from esdl4tulipa.parser import kinds
from esdl4tulipa.parser import merge_assets
from esdl4tulipa.parser import parse_graph

import typing


@pytest.fixture
def all_assets():
    ensys = debug("tests/data/esdl/norse-mythology-good.esdl")
    return parse_graph(ensys, lambda i: i, [], visit_all=True)


@pytest.fixture
def edges():
    ensys = debug("tests/data/esdl/norse-mythology-good.esdl")
    assets = parse_graph(ensys, lambda i: i, [], visit_all=True)
    electrolyzer = assets[1]
    gasnetwork = electrolyzer.port[1].connectedTo[0].energyasset
    gasstorage = gasnetwork.port[1].connectedTo[0].energyasset
    fuelcell = gasnetwork.port[1].connectedTo[1].energyasset
    gasdemand = gasnetwork.port[1].connectedTo[2].energyasset
    _edges = [
        (electrolyzer, gasnetwork),
        (gasnetwork, gasstorage),
        (gasnetwork, fuelcell),
        (gasnetwork, gasdemand),
    ]
    kinds = [
        ("conversion", "energynetwork"),
        ("energynetwork", "storage"),
        ("energynetwork", "conversion"),
        ("energynetwork", "consumer"),
    ]
    return _edges, kinds


@pytest.fixture
def empty_edges():
    _edges = [
        [esdl.GasNetwork(), esdl.Pipe(), esdl.GasDemand()],
        [esdl.GasNetwork(), esdl.Electrolyzer()],
        [esdl.GasNetwork(), esdl.FuelCell()],
        [esdl.GasNetwork(), esdl.Pipe(), esdl.GasStorage()],
    ]
    _kinds = [
        ["energynetwork", "transport", "consumer"],
        ["energynetwork", "conversion"],
        ["energynetwork", "conversion"],
        ["energynetwork", "transport", "storage"],
    ]
    return _edges, _kinds


def test_asset_kinds(edges):
    _edges = edges[0]
    _kinds = list(chain.from_iterable(edges[1]))
    inferred = kinds(*chain.from_iterable(_edges), unique=True)
    assert inferred == set(_kinds)

    inferred = kinds(*chain.from_iterable(_edges), unique=False)
    assert inferred == _kinds


def test_batched():
    seq = [
        esdl.Pipe(),
        esdl.GasDemand(),
        esdl.Electrolyzer(),
        esdl.FuelCell(),
        esdl.Pipe(),
        esdl.GasStorage(),
    ]
    expect = [seq[:2], seq[2:3], seq[3:4], seq[4:]]
    assert expect == list(batched(seq))


def test_fill_asset(all_assets):
    for asset in all_assets:
        assert fill_asset(asset)


def test_fill_assets_w_override(edges):
    flow = fill_asset(edges[0][0][0], name="foo")
    assert flow.name == "foo"


def test_fill_assets_bad_kind(edges):
    kind = "notthere"
    with pytest.raises(ValueError, match=f"unsupported {kind=}"):
        fill_asset(edges[0][0][0], kind=kind)


def test_merge_assets(edges):
    for a1, a2 in edges[0]:
        flow = merge_assets(fill_asset(a1), fill_asset(a2))
        assert hash(flow)
        assert flow.from_asset and flow.to_asset


def test_merge_assets_w_override(edges):
    a1, a2 = map(fill_asset, edges[0][0])
    flow = merge_assets(a1, a2, from_asset="foo", to_asset="bar")
    assert flow.from_asset == "foo"
    assert flow.to_asset == "bar"


@typing.no_type_check
def test_merge_assets_err(edges):
    a1, a2 = map(fill_asset, edges[0][0])
    a1.lifetime = 10
    a2.lifetime = 20
    hdr = f"{a1.name} != {a2.name}"
    body = f"lifetime.+{a1.lifetime}.+{a2.lifetime}"
    with pytest.raises(ValueError, match=f"{hdr}[\s\S]+{body}"):
        assert merge_assets(a1, a2)


def test_edge_is_allowed(empty_edges):
    _edges, _ = empty_edges
    for _edge in _edges:
        assert edge_is_allowed(*_edge)


def test_edge_not_allowed():
    assert not edge_is_allowed(esdl.GasProducer(), esdl.GasProducer())

    with pytest.raises(ValueError, match="link node cannot be an energynetwork"):
        edge_is_allowed(
            esdl.SolarCollector(), esdl.ElectricityNetwork(), esdl.Battery()
        )

    with pytest.raises(ValueError, match="incorrect number of assets"):
        edge_is_allowed(
            esdl.GasProducer(), esdl.GasNetwork(), esdl.GasNetwork(), esdl.GasDemand()
        )


def test_edge(empty_edges):
    _edges, _kinds = empty_edges
    for _edge, _kind in zip(_edges, _kinds):
        a = edge(*_edge)
        assert all(
            [
                isinstance(a[0], asset_types["transport"]),
                isinstance(a[1], asset_types[_kind[0]]),
                isinstance(a[2], asset_types[_kind[-1]]),
            ]
        )


def test_find_edges(edges):
    _, *gns = edges[0]
    _, *expect = edges[1]
    gasnetwork = gns[0][0]
    for _edge, _kind in zip(find_edges(gasnetwork, edge), expect):
        assert all(
            [
                isinstance(_edge[0], asset_types["transport"]),
                isinstance(_edge[1], asset_types[_kind[0]]),
                isinstance(_edge[2], asset_types[_kind[-1]]),
            ]
        )


def test_parse_graph():
    # TODO: test more meaningful things
    ensys = debug("tests/data/esdl/norse-mythology-good.esdl")
    assets_all = parse_graph(ensys, lambda i: i, [], visit_all=True)
    assets = parse_graph(ensys, lambda i: i, [], visit_all=False)
    assert len(assets) < len(assets_all)


def test_load():
    # TODO: test more meaningful things
    flows, assets = load("tests/data/esdl/norse-mythology-good.esdl")
    assert len(flows) == 35
    assert len(assets) == 29
