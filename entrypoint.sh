#!/bin/sh -l

set -eu

# populate stack cache
(cd /root && tar cf - .stack | (cd /github/home && tar xvf -))

stack test
