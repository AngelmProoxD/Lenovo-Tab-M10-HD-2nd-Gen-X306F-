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
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X306F device
$(call inherit-product, device/lenovo/X306F/device.mk)

PRODUCT_DEVICE := X306F
PRODUCT_NAME := omni_X306F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X306F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_amar_row_wifi-user 11 RP1A.200720.011 TB-X306F_U release-keys"

BUILD_FINGERPRINT := None
