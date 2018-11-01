#!/usr/bin/env bash
set -e

git config user.email "david@chainsafe.io"
git config user.name "David Ansermino"

git remote add ethereum https://github.com/ethereum/tests

git pull ethereum develop
git diff-index --quiet HEAD || (git commit -am 'CircleCi Merge with upstream' && git push origin develop)

