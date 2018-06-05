# abc-walleye-O-tutorial

**How to build ABC Rom for Pixel 2 (aka walleye)**

Follow instructions here to sync repos. 

https://github.com/munchycool/abc_davall_platform_manifest

Once done. 

cd ~/abc

cp device/google/walleye/walleye.mk vendor/nexus/products/walleye.mk

nano vendor/nexus/vendorsetup.sh 

add below line 

add_lunch_combo walleye-userdebug

ctrl+o, ctrl+x

. build/envsetup.sh

lunch

enter number for walleye from the list

make otapackage -jX (where X is any number which your computer can handle). If you do not know what X will be, just use

make otapackage

**Known Errors**

if build boots directly into recovery, check this

https://github.com/LineageOS/android_kernel_google_wahoo/commit/f72373a0dc59437ca189b3eb1ba993ca271c3aff

**For personal reference**

**Clone Vendor Tree**

git clone https://github.com/munchycool/proprietary_vendor_google -b a8.1.0 vendor/google

**Clone device tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/device_google_wahoo -b a8.1.0 device/google/wahoo

**Clone device tree for walleye**

git clone https://github.com/munchycool/device_google_walleye -b abc-8.1 device/google/walleye

**Clone kernel tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/nathan_kernel_google_wahoo -b oreo-m2 kernel/google/wahoo
