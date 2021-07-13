#!/bin/sh -l

set -eu

# populate stack cache
(cd /github/home && tar -xzvf /stack-cache.tar.gz)

stack test

