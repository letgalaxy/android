cd ~/android/lineage/
repo sync --force-sync -q
source build/envsetup.sh

export USE_CCACHE=1
ccache -M 64G
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"

breakfast onyx
mka bacon
