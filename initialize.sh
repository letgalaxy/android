#!/bin/sh

set -e
WORK_DIR=lineage

mkdir -p $WORK_DIR
cd $WORK_DIR
repo init -u git://github.com/LineageOS/android.git -b lineage-16.0
mkdir -p .repo/local_manifests
ln -f ../*.xml .repo/local_manifests/
