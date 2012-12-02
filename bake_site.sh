#!/bin/sh
# This "bakes" the site into static files.

_piecrust/bin/chef bake --root=documents
