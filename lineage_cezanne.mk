#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cezanne device
$(call inherit-product, device/xiaomi/cezanne/device.mk)

PRODUCT_DEVICE := cezanne
PRODUCT_NAME := lineage_cezanne
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2006J10C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cezanne-user 11 RP1A.200720.011 V12.5.11.0.RJNCNXM release-keys"

BUILD_FINGERPRINT := Redmi/cezanne/cezanne:11/RP1A.200720.011/V12.5.11.0.RJNCNXM:user/release-keys
