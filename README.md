# AOSiP-walleye-O-tutorial

**How to build AOSiP  for Pixel 2 (aka walleye)**

Follow instructions on below link to download AOSiP sources.

https://github.com/AOSiP/platform_manifest

Once done. 

cd ~/aosip

check if this change is in the code or not. 

https://github.com/munchycool/aosip_o_platform_frameworks_base/commit/a8c1cb1681a14901efa6058c7b6f0b34fae04091

if not , it will cause vendor mismatch warning on bootup even if they are in sync.

rm -rf external/json-c (got a compile error about files in this folder being already defined elsewhere so this folder was removed). You can try compiling without removing this as well, and if you get an error about it remove this folder.

We also need msm8998 repo from https://android.googlesource.com. 

for this build we used 

https://android.googlesource.com/platform/hardware/qcom/msm8998/+/android-8.1.0_r20

clone it to aosip/hardware/qcom/msm8998


**Clone Vendor Tree**

git clone https://github.com/munchycool/proprietary_vendor_google -b a8.1.0 vendor/google

**Clone device tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/device_google_wahoo -b a8.1.0 device/google/wahoo

**Clone device tree for walleye**

git clone https://github.com/munchycool/device_google_walleye -b AOSIP-O device/google/walleye

**Clone gapps tree**

git clone https://github.com/munchycool/vendor_pixelgapps -b a8.1.0 vendor/pixelgapps

**Clone kernel tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/android_kernel_google_wahoo -b cr-6.1 kernel/google/wahoo


cd ~/aosip

. build/envsetup.sh

lunch

enter number for walleye from the list

make otapackage -jX (where X is any number which your computer can handle). If you do not know what X will be, just use

make otapackage

