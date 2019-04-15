#!/bin/bash
WORK_DIR=lineage
LINEAGE_BUILD=onyx
export USE_CCACHE=1

cd $WORK_DIR
repo sync --force-sync -q
source build/envsetup.sh

breakfast $LINEAGE_BUILD
ccache -M 48G
mka bacon

cp $OUT/lineage-* /mnt/c/Users/bhaak/OneDrive/Android
