# device_google_walleye

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

**Clone Gapps**

git clone https://github.com/munchycool/vendor_pixelgapps -b a8.1.0 vendor/pixelgapps

**Clone device tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/du_android_device_google_wahoo -b du-rr-o device/google/wahoo

**Clone kernel tree for wahoo (walleye + taimen) - Flash Kernel**

git clone https://github.com/munchycool/nathan_kernel_google_wahoo -b oreo-m2 kernel/google/wahoo

**Clone device tree for walleye**

git clone https://github.com/munchycool/device_google_walleye -b du-rr-o device/google/walleye


**Clone other packages needed for Settings to work**

git clone https://github.com/LineageOS/android_external_bson -b lineage-15.1 external/bson

git clone https://github.com/LineageOS/android_packages_resources_devicesettings -b lineage-15.1 packages/resources/devicesettings

Known Errors

if build boots directly into recovery, check this

https://github.com/LineageOS/android_kernel_google_wahoo/commit/f72373a0dc59437ca189b3eb1ba993ca271c3aff

also need

manifest

remote name="aosp" fetch="https://android.googlesource.com" review="https://android-review.googlesource.com/" default revision="refs/tags/android-8.1.0_r20" remote="aosp" sync-c="true" sync-j="4" project path="hardware/qcom/data/ipacfg-mgr" name="platform/hardware/qcom/data/ipacfg-mgr" groups="qcom,pdk" project path="hardware/qcom/msm8998" name="platform/hardware/qcom/msm8998" groups="qcom_msm8998" manifest

# i just copy it from carbon 

cp -r ~/carbon/hardware/qcom/data ~/rr/hardware/qcom/data

cp -r ~/carbon/hardware/qcom/msm8998 ~/rr/hardware/qcom/msm8998
