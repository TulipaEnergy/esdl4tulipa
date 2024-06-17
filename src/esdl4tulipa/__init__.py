"""Documentation about esdl4tulipa."""

import logging
from ._version import __version__  # noqa: F401
from ._version import __version_tuple__  # noqa: F401
from .parser import load  # noqa: F401

logging.getLogger(__name__).addHandler(logging.NullHandler())

__author__ = "Suvayu Ali"
__email__ = "s.ali@esciencecenter.nl"
