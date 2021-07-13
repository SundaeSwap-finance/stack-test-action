#!/bin/sh -l

set -eu

# populate stack cache
(cd /root && tar cf - .stack | (cd /github/home && tar xvf -))
chown -R "$(id -un):$(id -gn)" /github/workspace

stack test
