#!/bin/sh

# Package requirements for building LineageOS:
# adb fastboot bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick
# lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev
# libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev repo

# For building on WSL remember to set the following registry key:
# Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel -> obcaseinsensitive = 0

set -e
WORK_DIR=lineage

mkdir -p $WORK_DIR
cd $WORK_DIR
repo init -u git://github.com/LineageOS/android.git -b lineage-16.0
mkdir -p .repo/local_manifests
ln -f ../*.xml .repo/local_manifests/
