#!/bin/bash

FILESDIR=$1
SEARCHSTR=$2

if [ $# -ne 2 ]; then
    echo "F"
    exit 1
fi

NUM="$(ls $FILESDIR | wc -l)"
NUMM="$(grep -r $SEARCHSTR $FILESDIR | wc -l)"

if [ -d $FILESDIR ]; then
    echo "The number of files are $NUM and the number of matching lines are $NUMM"
else
    echo "G"
    exit 1
fi
