from dataclasses import fields
import types
import duckdb

from esdl4tulipa.db import insert_into
from esdl4tulipa.db import insert_profile_into
from esdl4tulipa.parser import load

import pytest


@pytest.fixture
def flows_assets():
    return load("tests/data/esdl/norse-mythology-good.esdl")


@pytest.fixture
def flows_assets_profiles():
    return load("tests/data/esdl/Tiny-edr-profiles.esdl")


def test_insert(flows_assets):
    tblnames = ("flow_table", "asset_table")
    records = {k: v for k, v in zip(tblnames, flows_assets)}
    con = duckdb.connect()  # can have db file as argument

    for tbl in tblnames:
        assert tbl == insert_into(con, tbl, records[tbl])
        dc = records[tbl][0]
        df = con.sql(f"SELECT * FROM {tbl} LIMIT 5").df()
        for f in fields(dc):
            assert f.name in df.columns
            print(f.type, type(f.type))
            if f.type == str:
                assert object == df.dtypes[f.name]
            elif isinstance(f.type, types.UnionType):
                # shortcut b/c I know they are all <type> | None
                _type, *_ = f.type.__args__
                assert _type == df.dtypes[f.name]
            else:
                assert f.type == df.dtypes[f.name]


def test_insert_profile(flows_assets_profiles):
    *_, profiles = flows_assets_profiles
    profiles = profiles[:3]  # only use 3, to shorten time
    tbl = "profile_table"
    con = duckdb.connect()  # can have db file as argument

    for profile in profiles:
        assert tbl == insert_profile_into(con, tbl, profile)

    res = con.sql(f"SELECT COUNT(*) FROM {tbl}").df()
    assert sum(p.shape[0] for p in profiles) == res.iloc[0, 0]
