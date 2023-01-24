#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Rootdir
PRODUCT_PACKAGES += \
    fstab.mt6885 \
    init.project.rc \
    init.mt6885.rc \
    meta_init.rc \
    init.mt6885.usb.rc \
    init.ago.rc \
    factory_init.project.rc \
    factory_init.connectivity.rc \
    meta_init.modem.rc \
    init.aee.rc \
    init.modem.rc \
    meta_init.project.rc \
    multi_init.rc \
    init.sensor_2_0.rc \
    init.connectivity.rc \
    meta_init.connectivity.rc \
    factory_init.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6885:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6885

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/cezanne/cezanne-vendor.mk)
