#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from plato device
$(call inherit-product, device/xiaomi/plato/device.mk)

PRODUCT_DEVICE := plato
PRODUCT_NAME := omni_plato
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 22071212AG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="plato-user 12 SP1A.210812.016 V14.0.7.0.ULQMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/plato_global/plato:12/SP1A.210812.016/V14.0.7.0.ULQMIXM:user/release-keys
