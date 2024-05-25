#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from blueline device
$(call inherit-product, device/google/blueline/device.mk)

PRODUCT_DEVICE := blueline
PRODUCT_NAME := omni_blueline
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="blueline-user 9 PD1A.180720.030 4972053 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:9/PD1A.180720.030/4972053:user/dev-keys
