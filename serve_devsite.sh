#!/bin/sh
# This serves a development version of the site for testing, assuming the PieCrust files have been downloaded into _piecrust

_piecrust/bin/chef --root=documents serve

