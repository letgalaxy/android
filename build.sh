#!/bin/bash

WORK_DIR=lineage
PRODUCT=onyx
UPLOAD_DIR=/mnt/c/Users/bhaak/OneDrive/Android/
export USE_CCACHE=1

cd $WORK_DIR
repo sync --force-sync -q
source build/envsetup.sh

ccache -M 48G
brunch $PRODUCT
mv $OUT/lineage-* $UPLOAD_DIR
