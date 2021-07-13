#!/bin/sh -l

set -eu

chown -R "$(id -un):$(id -gn)" ~
stack test

