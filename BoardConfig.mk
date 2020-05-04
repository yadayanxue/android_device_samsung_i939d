#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/i939d

ifeq ($(WITH_TWRP),true)
PRODUCT_COPY_FILES += \
    device/samsung/i939d/twrp/twrp.fstab:recovery/root/etc/twrp.fstab
endif

include device/samsung/smdk4412-common/BoardCommonConfig.mk

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
BOARD_GLOBAL_CFLAGS += -DCAMERA_WITH_CITYID_PARAM

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := lineageos_i939d_defconfig
BOARD_KERNEL_BASE := 0x10000000

# Cache
BOARD_CACHEIMAGE_PARTITION_SIZE := 1048576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := 2

# TWRP Support
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_EXCLUDE_MTP := true
TW_INCLUDE_FB2PNG := true

# Selinux
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/selinux

# Assert
TARGET_OTA_ASSERT_DEVICE := m0ctc,m0ctcduos,i939d,SCH-I939D
