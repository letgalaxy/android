#!/bin/bash

if [ "$#" -ne 1 ] || ! [ -d "$1" ]
then
    echo "Usage: $0 UPLOAD_DIR"
    exit 1
fi

if [ ! -f $OUT/lineage-* ]
then
    echo "Error: No files to upload"
    exit 1
fi

mv $OUT/lineage-* $1
