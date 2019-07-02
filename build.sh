#!/bin/bash

[ "$#" == 1 ] || { echo "Usage: $0 PRODUCT"; exit 1; }

export USE_CCACHE=1
WORK_DIR=lineage
C_SIZE=48G

cd $WORK_DIR
repo sync --force-sync -q
source build/envsetup.sh

ccache -M $C_SIZE
brunch $1
