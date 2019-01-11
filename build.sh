cd ~/android/lineage/
repo sync --force-sync -q
source build/envsetup.sh

breakfast onyx
export USE_CCACHE=1
ccache -M 64G
mka bacon
