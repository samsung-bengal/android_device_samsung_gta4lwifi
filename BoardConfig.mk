#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common gta4l-common
-include device/samsung/gta4l-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gta4lwifi

# Assert
TARGET_OTA_ASSERT_DEVICE := gta4lwifi

# Board
TARGET_BOARD_NAME := SRPTD23A002

# Kernel
TARGET_KERNEL_CONFIG := gta4lwifi_defconfig
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb
BOARD_MKBOOTIMG_ARGS += --board $(TARGET_BOARD_NAME)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# Recovery
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo

# inherit from the proprietary version
-include vendor/samsung/gta4lwifi/BoardConfigVendor.mk
