"""Retrieve profiles associated to energy assets."""

from itertools import pairwise
import numpy.testing as np_test
import pandas as pd
from esdl import esdl
from esdl.profiles.influxdbprofilemanager import ConnectionSettings
from esdl.profiles.influxdbprofilemanager import InfluxDBProfileManager


def influx_to_tulipa(df: pd.DataFrame) -> pd.DataFrame:
    """Convert InfluxDB profile to match Tulipa schema."""
    name = df.attrs["profile"]
    *_, influx_field = name.rsplit(":", maxsplit=1)
    np_test.assert_array_equal(df.columns, ["datetime", influx_field])
    year = df["datetime"].dt.year
    name_dt = pd.DataFrame.from_records(
        (
            (name, y, n)
            for y, count in year.groupby(year).count().items()
            for n in range(1, count + 1)
        ),
        columns=["name", "year", "period"],
    )
    return pd.concat([name_dt, df.iloc[:, -1].rename("value")], axis=1)


def get_influx_profile(profile: esdl.InfluxDBProfile):
    """Read profiles from TNO's EDR as a `pandas.DataFrame`."""
    settings = ConnectionSettings(
        host=profile.host,
        port=profile.port,
        username="",
        password="",
        database=profile.database,
        ssl=True,
        verify_ssl=True,
    )
    manager = InfluxDBProfileManager(settings=settings)
    manager.load_influxdb(
        profile.measurement,
        [profile.field],
        from_datetime=profile.startDate,
        to_datetime=profile.endDate,
        filters=profile.filters,
    )
    df = pd.DataFrame(manager.profile_data_list, columns=manager.profile_header)
    df.attrs = {"profile": gen_profile_name(profile)}
    return df


def _get_profile(port: esdl.InPort | esdl.OutPort) -> esdl.InfluxDBProfile | None:
    if len(port.profile) > 0:
        profile = port.profile[0]
        if "edr" in profile.host.casefold():
            return profile


def gen_profile_name(profile: esdl.InfluxDBProfile):
    """Generate a profile name as 'measurement:field'."""
    return f"{profile.measurement}:{profile.field}"


def get_profiles(*assets: esdl.EnergyAsset) -> list[esdl.InfluxDBProfile]:
    """Read profile associated to the edge."""
    if len(assets) == 1:
        profiles = [
            _port1.profile[0] for _port1 in assets[0].port if len(_port1.profile) > 0
        ]
    else:
        nassets = len(assets)
        profiles = []
        for i, (a1, a2) in enumerate(pairwise(assets)):
            for _port1 in filter(lambda p: isinstance(p, esdl.OutPort), a1.port):
                for _port2 in _port1.connectedTo:
                    if (
                        isinstance(_port2, esdl.InPort)
                        and a2 == _port2.energyasset
                        and (_prof := _get_profile(_port1))
                    ):
                        profiles.append(_prof)
                    if (nassets - 2 == i) and (_prof := _get_profile(_port2)):
                        profiles.append(_prof)
    return profiles
