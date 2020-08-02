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

BUILD_TOP := $(shell pwd)

PLATFORM_PATH := device/samsung/exynos9611-common

# Board
TARGET_BOARD_PLATFORM := universal9611
TARGET_SOC := exynos9611
TARGET_BOOTLOADER_BOARD_NAME := exynos9611
TARGET_BOARD_PLATFORM_GPU := mali-g72

# build/make/core/Makefile
TARGET_NO_BOOTLOADER := true

# Enable hardware/samsung
BOARD_VENDOR := samsung

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Render
OVERRIDE_RS_DRIVER := libRSDriverArm.so

# Hardware-Include
TARGET_SPECIFIC_HEADER_PATH := $(PLATFORM_PATH)/hardware/include

# Kernel
TARGET_PREBUILT_KERNEL := $(PLATFORM_PATH)/prebuilt/Image

# Binder
TARGET_USES_64_BIT_BINDER := true

# VNDK
BOARD_VNDK_VERSION := current

# System
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
AB_OTA_UPDATER := false

BOARD_ROOT_EXTRA_FOLDERS := \
    efs \
    dqmdbg \
    omr

BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/vendor/efs:/efs/efs

# Vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Cache
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Userdata
TARGET_USERIMAGES_USE_EXT4 := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_PATH)/hardware/bluetooth
BOARD_CUSTOM_BT_CONFIG := $(PLATFORM_PATH)/hardware/bluetooth/libbt_vndcfg.txt

# Graphics
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_HAS_HDR_DISPLAY := true
TARGET_HAS_WIDE_COLOR_DISPLAY := true

# HIDL
DEVICE_MANIFEST_FILE += $(PLATFORM_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(PLATFORM_PATH)/compatibility_matrix.xml

# sepolicy
include device/lineage/sepolicy/exynos/sepolicy.mk

# Prop Files
TARGET_SYSTEM_PROP += $(PLATFORM_PATH)/system.prop
TARGET_VENDOR_PROP += $(PLATFORM_PATH)/vendor.prop

# WIFI
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_HIDL_FEATURE_DISABLE_AP_MAC_RANDOMIZATION := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Allow Vendor File Override
BUILD_BROKEN_DUP_RULES := true