# NitrogenOS-O-walleye-tutorial

**How to build Nitrogen OS for Pixel 2 (aka walleye)**

Follow instructions on below link to download Nitrogen OS sources.

https://github.com/nitrogen-project/android_manifest

Once done. 

cd ~/nitrogen

rm -rf external/tinycompress

git clone https://github.com/CarbonROM/android_external_tinycompress -b cr-6.1 external/tinycompress

rm -rf external/selinux

git clone https://github.com/nitrogen-for-taimen/android_external_selinux -b o2 external/selinux

rm -rf system/sepolicy

git clone https://github.com/nitrogen-for-taimen/android_system_sepolicy -b o2 system/sepolicy

**Clone Vendor Tree**

git clone https://github.com/munchycool/proprietary_vendor_google -b a8.1.0 vendor/google

**Clone device tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/device_google_wahoo -b a8.1.0 device/google/wahoo

**Clone device tree for walleye**

git clone https://github.com/munchycool/device_google_walleye -b Nitrogen-O device/google/walleye

**Clone gapps tree**

git clone https://github.com/munchycool/vendor_pixelgapps -b a8.1.0 vendor/pixelgapps

**Clone kernel tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/android_kernel_google_wahoo -b cr-6.1 kernel/google/wahoo


cd ~/nitrogen

. build/envsetup.sh

lunch

enter number for walleye from the list

make otapackage -jX (where X is any number which your computer can handle). If you do not know what X will be, just use

make otapackage
