#!/bin/sh
set -e

WORK_DIR=lineage

mkdir $WORK_DIR
cd $WORK_DIR
repo init -u git://github.com/LineageOS/android.git -b lineage-16.0

mkdir .repo/local_manifests
ln ../local_manifest.xml .repo/local_manifests/onyx.xml
