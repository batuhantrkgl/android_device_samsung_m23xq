#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from m23xq device
$(call inherit-product, device/samsung/m23xq/device.mk)

PRODUCT_DEVICE := m23xq
PRODUCT_NAME := omni_m23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M236B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m23xqxx-user 11 RP1A.200720.012 M236BXXU1AVG1 release-keys"

BUILD_FINGERPRINT := samsung/m23xqxx/m23xq:11/RP1A.200720.012/M236BXXU1AVG1:user/release-keys
