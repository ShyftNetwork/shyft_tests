#!/usr/bin/env bash
set -e

git remote add ethereum https://github.com/ethereum/tests
git pull ethereum develop
git commit -am 'CircleCi Merge with upstream'
git push origin develop