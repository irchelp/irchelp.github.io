#!/bin/sh
# This "bakes" the site into static files.

_piecrust/bin/chef --root=documents bake

cd documents/_content/pages
tar -cvzf ../../../wio.tar.gz *


