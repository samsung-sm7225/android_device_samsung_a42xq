#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a42xq

include device/samsung/sm7225-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG        := vendor/a42xq_eur_open_defconfig
BOARD_NAME                  := SRPTF23D003

# Display
TARGET_SCREEN_DENSITY := 300

# OTA assert
TARGET_OTA_ASSERT_DEVICE := a42xq
