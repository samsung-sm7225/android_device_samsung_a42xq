#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a42xq

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(COMMON_PATH)/bluetooth/include

TARGET_HAS_UDFPS := true
TARGET_HAS_AMOLED := true

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# call the common setup
$(call inherit-product, device/samsung/sm7225-common/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/a42xq/a42xq-vendor.mk)

# Init files
PRODUCT_PACKAGES += \
    init.a42xq.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

TARGET_VENDOR_PROP += $(COMMON_PATH)/vendor.prop