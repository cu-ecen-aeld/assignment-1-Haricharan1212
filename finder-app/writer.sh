#!/bin/bash

WRITEFILE=$1
WRITESTR=$2

if [ $# -ne 2 ]; then
    echo "H"
    exit 1
fi

mkdir -p -- "$(dirname -- $WRITEFILE)"
echo $WRITESTR >"$WRITEFILE"
