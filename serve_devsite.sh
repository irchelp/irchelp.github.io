#!/bin/sh
# This serves a development version of the site for testing, assuming the PieCrust files have been downloaded into _piecrust

echo "This is slightly broken right now." 
_piecrust/bin/chef --root=documents serve

