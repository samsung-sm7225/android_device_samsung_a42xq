#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a42xq

include device/samsung/sm7225-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG        := vendor/a42xq_eur_open_defconfig
BOARD_NAME                  := SRPTF23D003

# Camera
SOONG_CONFIG_NAMESPACES += samsungCameraVars
SOONG_CONFIG_samsungCameraVars += extra_ids
# ID=50 is wide camera
# ID=54 is macro
SOONG_CONFIG_samsungCameraVars_extra_ids := 50,54

# Display
TARGET_SCREEN_DENSITY := 300

# OTA assert
TARGET_OTA_ASSERT_DEVICE := a42xq
