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

# Inherit from gram device
$(call inherit-product, device/xiaomi/gram/device.mk)

PRODUCT_DEVICE := gram
PRODUCT_NAME := omni_gram
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M2 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gram_in-user 12 RKQ1.211019.001 V14.0.3.0.SJPINXM release-keys"

BUILD_FINGERPRINT := POCO/gram_in/gram:12/RKQ1.211019.001/V14.0.3.0.SJPINXM:user/release-keys
