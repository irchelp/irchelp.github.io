#!/bin/bash
rm -rf out || exit 0;
mkdir out; 
( cd out
 git init
 git config user.name "Travis-CI"
 git config user.email "travis@travis-ci.org"
 cp -aR ../documents/_counter/* .
 git add -A
 git commit -m "Automatically Deployed to staging site http://irchelp.github.io"
 git push --force --quiet "https://${GH_TOKEN}@github.com/irchelp/irchelp.github.io/" master:gh-pages > /dev/null 2>&1
)
