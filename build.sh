#!/bin/bash

if [ "$#" -ne 1 ]
then
    echo "Usage: $0 PRODUCT"
    exit 1
fi

export USE_CCACHE=1
WORK_DIR=lineage
C_SIZE=48G
PRODUCT=$1

cd $WORK_DIR
repo sync --force-sync -q
source build/envsetup.sh

ccache -M $C_SIZE
brunch $PRODUCT
