WORK_DIR=~/android/lineage
OUT_DIR=out
LINEAGE_BUILD=onyx
export USE_CCACHE=1

cd $WORK_DIR
repo sync --force-sync -q
. build/envsetup.sh

breakfast $LINEAGE_BUILD
ccache -M 64G
[ -d $OUT_DIR ] && rm -r $OUT_DIR
mka bacon
