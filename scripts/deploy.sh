#!/usr/bin/env bash
set -e

git remote add ethereum https://github.com/ethereum/tests
git pull ethereum develop --rebase
git commit -am 'CircleCi Merge with upstream'
git push origin develop