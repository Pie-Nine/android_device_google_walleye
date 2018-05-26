
# Copyright (C) 2017 The ABC rom
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Include pure telephony configuration
include vendor/nexus/configs/abc_phone.mk

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Call some device specific files for walleye
$(call inherit-product, device/google/walleye/device-walleye.mk)
$(call inherit-product, vendor/google/walleye/walleye-vendor.mk)

# Add gapps
$(call inherit-product, vendor/gapps/gapps.mk)

# Get Apns
#PRODUCT_COPY_FILES := device/google/wahoo/apns-full-conf.xml:system/etc/apns-conf.xml


# Audio effects
PRODUCT_COPY_FILES += \
    device/google/walleye/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml
# Include AmbientSense if it's available
-include vendor/ambientmusic/AmbientMusic.mk

# Override AOSP build properties
PRODUCT_NAME := walleye
PRODUCT_DEVICE := walleye
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 2
PRODUCT_MANUFACTURER := Google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    BUILD_FINGERPRINT=google/walleye/walleye:8.1.0/OPM2.171019.029.B1/4720900:user/release-keys \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM2.171019.029.B1 4720900 release-keys"


# Inherit AOSP device configuration for  taimen
#$(call inherit-product, device/google/taimen/aosp_taimen.mk)

#$(call inherit-product, vendor/gapps/gapps.mk)

# Override AOSP build properties
#PRODUCT_NAME := taimen
#PRODUCT_DEVICE := taimen
#PRODUCT_BRAND := Google
#PRODUCT_MODEL := Pixel 2 XL
#PRODUCT_MANUFACTURER := Google
#PRODUCT_RESTRICT_VENDOR_FILES := false

# Device Fingerprint
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME=taimen \
#    BUILD_FINGERPRINT=google/taimen/taimen:8.1.0/OPM2.171019.029.B1/4720900:user/release-keys \
#    PRIVATE_BUILD_DESC="taimen-user 8.1.0 OPM2.171019.029.B1 4720900 release-keys"

#$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
