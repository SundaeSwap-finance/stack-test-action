#!/bin/sh -l

set -eu

env | sort
echo "pwd: $(pwd)"

# populate stack cache
(cd /github/home && tar -xzvf /stack-cache.tar.gz)

stack test
