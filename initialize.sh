#!/bin/sh

# For building on WSL remember to set the following registry key:
# Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel -> obcaseinsensitive = 0

set -e
WORK_DIR=lineage

mkdir -p $WORK_DIR
cd $WORK_DIR
repo init -u git://github.com/LineageOS/android.git -b lineage-16.0
mkdir .repo/local_manifests
ln ../*.xml .repo/local_manifests/
