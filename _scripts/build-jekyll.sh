#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build --strict_front_matter
# for right now, we don't want to test external sites
# when we get closer to relaunch, remove this so that
# we do test them.
bundle exec htmlproofer ./_site --disable-external
