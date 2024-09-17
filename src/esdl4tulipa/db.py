"""Populate DuckDB from ESDL input."""

from dataclasses import asdict
import duckdb
import pandas as pd
from .mapping import TAssets
from .profiles import influx_to_tulipa


def insert_into(con: duckdb.DuckDBPyConnection, tbl: str, records: tuple[TAssets, ...]):
    """Insert Tulipa records into DuckDB."""
    df = pd.DataFrame(asdict(i) for i in records)  # noqa: F841
    return _insert_into(con, tbl, df)


def insert_profile_into(con: duckdb.DuckDBPyConnection, tbl: str, df: pd.DataFrame):
    """Insert Tulipa records into DuckDB."""
    df = influx_to_tulipa(df)
    return _insert_into(con, tbl, df)


def _insert_into(con: duckdb.DuckDBPyConnection, tbl: str, df: pd.DataFrame):
    # FIXME: use prepared statements
    tbl_test = con.sql(f"SELECT name FROM (SHOW TABLES) WHERE name = {tbl!r}").df()
    if tbl_test.empty:
        con.execute(f"CREATE TABLE {tbl} AS SELECT * FROM df")
    else:
        con.execute(f"INSERT INTO {tbl} SELECT * FROM df")
    return tbl
