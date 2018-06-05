# rr-walleye-O-tutorial

**How to build Resurrection Remix for Pixel 2 (aka walleye)**

Follow instructions on below link to download RR sources.

https://github.com/ResurrectionRemix/platform_manifest

Once done. 

cd ~/rr

check for below commit. if its not there, you will get vendor mismatch error on bootup even if build fingerprint and vendor fingerprint are in sync. 

https://github.com/munchycool/rr_o_android_frameworks_base/commit/4256c66dd4fb9f98f2a16751cc8b202035a3aedf  

rm -rf external/json-c (got a compile error about files in this folder being already defined elsewhere so this folder was removed). 

You can try compiling without removing this as well, and if you get an error about it remove this folder.

We also need repos mentioned at the end as they were not synced when I synced RR from source.


**Clone Vendor Tree**

git clone https://github.com/munchycool/proprietary_vendor_google -b a8.1.0 vendor/google

**Clone device tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/device_google_wahoo -b RR-O device/google/wahoo

**Clone device tree for walleye**

git clone https://github.com/munchycool/device_google_walleye -b RR-O device/google/walleye

**Clone gapps tree**

git clone https://github.com/munchycool/vendor_pixelgapps -b a8.1.0 vendor/pixelgapps

**Clone kernel tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/nathan_kernel_google_wahoo -b oreo-m2 kernel/google/wahoo

cd ~/rr

. build/envsetup.sh

lunch

enter number for walleye from the list

select unofficial build

changelog 0 days (just makes it faster to proceed to next step)

make otapackage -jX (where X is any number which your computer can handle). If you do not know what X will be, just use

make otapackage

**Known Errors**

if build boots directly into recovery, check this

https://github.com/LineageOS/android_kernel_google_wahoo/commit/f72373a0dc59437ca189b3eb1ba993ca271c3aff

<?xml version="1.0" encoding="UTF-8"?>
<manifest>

  <remote  name="aosp"
           fetch="https://android.googlesource.com"
           review="https://android-review.googlesource.com/" />
  <default revision="refs/tags/android-8.1.0_r20"
           remote="aosp"
           sync-c="true"
           sync-j="4" />
  <project path="hardware/qcom/data/ipacfg-mgr" name="platform/hardware/qcom/data/ipacfg-mgr" groups="qcom,pdk" />
  <project path="hardware/qcom/msm8960" name="platform/hardware/qcom/msm8960" groups="qcom_msm8960,pdk" />
  <project path="hardware/qcom/msm8994" name="platform/hardware/qcom/msm8994" groups="qcom_msm8994,pdk" />
  <project path="hardware/qcom/msm8996" name="platform/hardware/qcom/msm8996" groups="qcom_msm8996" />
  <project path="hardware/qcom/msm8998" name="platform/hardware/qcom/msm8998" groups="qcom_msm8998" />
  <project path="hardware/qcom/msm8x26" name="platform/hardware/qcom/msm8x26" groups="qcom_msm8x26,pdk" />
  <project path="hardware/qcom/msm8x27" name="platform/hardware/qcom/msm8x27" groups="qcom_msm8x27,pdk" />
  <project path="hardware/qcom/msm8x84" name="platform/hardware/qcom/msm8x84" groups="qcom_msm8x84,pdk" />
  <project path="hardware/qcom/msm8x09" name="platform/hardware/qcom/msm8x09" groups="qcom_msm8x09" />
</manifest>


#i just copy it from carbon 

cp -r ~/carbon/hardware/qcom/data ~/rr/hardware/qcom/data
cp -r ~/carbon/hardware/qcom/msm8960 ~/rr/hardware/qcom/msm8960
cp -r ~/carbon/hardware/qcom/msm8994 ~/rr/hardware/qcom/msm8994
cp -r ~/carbon/hardware/qcom/msm8996 ~/rr/hardware/qcom/msm8996
cp -r ~/carbon/hardware/qcom/msm8998 ~/rr/hardware/qcom/msm8998
cp -r ~/carbon/hardware/qcom/msm8x26 ~/rr/hardware/qcom/msm8x26
cp -r ~/carbon/hardware/qcom/msm8x27 ~/rr/hardware/qcom/msm8x27
cp -r ~/carbon/hardware/qcom/msm8x84 ~/rr/hardware/qcom/msm8x84
cp -r ~/carbon/hardware/qcom/msm8x09 ~/rr/hardware/qcom/msm8x09
