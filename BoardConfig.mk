# Copyright (C) 2013 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

TARGET_OTA_ASSERT_DEVICE := sp7731gea,sp7731g,A1000

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_NO_BOOTLOADER := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := A1000

# Platform
TARGET_BOARD_PLATFORM := sc8830
BOARD_GLOBAL_CFLAGS += -DSPRD_HARDWARE

# DTB
#TARGET_PREBUILT_DTB := device/lenovo/sp7731gea/dt.img
#PRODUCT_COPY_FILES += device/lenovo/sp7731gea/dt.img:dt.img

# Kernel
TARGET_KERNEL_ARCH := arm
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_BASE := 0x00000000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true 
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/sp7731gea/mkbootimg.mk
TARGET_KERNEL_SOURCE := kernel/lenovo/sp7731gea
TARGET_KERNEL_CONFIG := sp7731gea_hd-dt_defconfig
#PRODUCT_COPY_FILES += device/lenovo/sp7731gea/kernel:kernel

KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 15728640
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_CACHEIMAGE_PARTITION_SIZE := 157286400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5073010688
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200


# Recovery
#DEVICE_RESOLUTION := 480x800
BOARD_HDPI_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lenovo/sp7731gea/recovery/recovery_keys.c
BOARD_HAS_NO_MISC_PARTITION := false
TARGET_RECOVERY_FSTAB := device/lenovo/sp7731gea/recovery/recovery.fstab
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"

# UMS
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Camera
TARGET_BOARD_CAMERA_HAL_VERSION := 1.0
CAMERA_SUPPORT_SIZE := 5M
FRONT_CAMERA_SUPPORT_SIZE := VGA
TARGET_BOARD_NO_FRONT_SENSOR := false
TARGET_BOARD_CAMERA_FLASH_CTRL := false

# Charger
#BOARD_CHARGER_ENABLE_SUSPEND := true
#BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/lenovo/sp7731gea/sepolicy


TARGET_RECOVERY_FSTAB := device/lenovo/sp7731gea/recovery/recovery.fstab

#twrp
RECOVERY_VARIANT := twrp
#TARGET_RECOVERY_FSTAB := device/lenovo/sp7731gea/recovery/twrp.fstab
PRODUCT_COPY_FILES += device/lenovo/sp7731gea/recovery/twrp.fstab:root/etc/twrp.fstab
HAVE_SELINUX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_USB_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_FLASH_FROM_STORAGE := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/sprd_backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TWRP_EVENT_LOGGING := false
TW_DEFAULT_EXTERNAL_STORAGE := true
# TW_THEME := portrait_hdpi
# TW_NO_SCREEN_BLANK := true
TW_FBIOPAN := true
DEVICE_RESOLUTION := 480x800

#######
# twrp can work with toybox but I'll stick to busybox as it's used a lot .
#TW_USE_TOOLBOX := true




