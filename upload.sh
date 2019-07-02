#!/bin/bash

[ "$#" == 1 ] || [ -d "$1" ] || { echo "Usage: $0 UPLOAD_DIR"; exit 1; }
[ -f $OUT/lineage-* ] || { echo "Error: No files to upload"; exit 1; }

mv $OUT/lineage-* $1
