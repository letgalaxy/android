WORK_DIR=~/android/lineage
LINEAGE_BUILD=onyx
export USE_CCACHE=1

cd $WORK_DIR
repo sync --force-sync -q
. build/envsetup.sh

breakfast $LINEAGE_BUILD
ccache -M 64G
mka bacon

cp $OUT/lineage-* ~/
