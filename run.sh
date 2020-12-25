#!/bin/bash
build.sh || { echo "Failed to build project"; exit 1; }

PROG=`find bin -type f -executable -print -quit`
[ -n "$1" ] && PROG="$1"
echo "Running $PROG"

$PROG

