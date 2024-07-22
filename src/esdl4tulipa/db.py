"""Populate DuckDB from ESDL input."""

from dataclasses import asdict
import duckdb
import pandas as pd
from .mapping import TAssets


def insert_into(con: duckdb.DuckDBPyConnection, tbl: str, records: tuple[TAssets, ...]):
    """Insert Tulipa records into DuckDB."""
    df = pd.DataFrame(asdict(i) for i in records)  # noqa: F841
    # FIXME: use prepared statements
    con.execute(f"CREATE TABLE {tbl} AS SELECT * FROM df")
    return tbl
