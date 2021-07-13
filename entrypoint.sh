#!/bin/sh -l

set -eu

# populate stack cache
echo "copying stack cache to /github/home/.stack"
(cd /root && tar cf - .stack | (cd /github/home && tar xf -))

echo "changing ownership of /github/workspace"
chown -R "$(id -un):$(id -gn)" /github/workspace

echo "stack test"
stack test
