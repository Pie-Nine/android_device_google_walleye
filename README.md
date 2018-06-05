# carbon-walleye-O-tutorial

**How to build Carbon Rom for Pixel 2 (aka walleye)**

Follow instructions on below link to download carbon sources.

https://github.com/CarbonROM/android

Once done. 

cd carbon

**Clone Vendor Tree**

git clone https://github.com/munchycool/proprietary_vendor_google -b a8.1.0 vendor/google

**Clone device tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/device_google_wahoo -b a8.1.0 device/google/wahoo

**Clone device tree for walleye**

git clone https://github.com/munchycool/device_google_walleye -b a8.1.0 device/google/walleye

**Clone gapps tree**

git clone https://github.com/munchycool/vendor_pixelgapps -b a8.1.0 vendor/pixelgapps

**Clone kernel tree for wahoo (walleye + taimen)**

git clone https://github.com/munchycool/nathan_kernel_google_wahoo -b oreo-m2 kernel/google/wahoo


cd ~/carbon

. build/envsetup.sh

lunch

enter number for walleye from the list

make otapackage -jX (where X is any number which your computer can handle). If you do not know what X will be, just use

make otapackage

