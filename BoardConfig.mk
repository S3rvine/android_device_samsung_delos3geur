# Copyright (C) 2011 The Android Open Source Project
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
#

# inherit from the proprietary version
-include vendor/samsung/delos3geur/BoardConfigVendor.mk

BOARD_VENDOR := samsung

TARGET_GLOBAL_CFLAGS   += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS   += -DQCOM_NO_SECURE_PLAYBACK -DBINDER_COMPAT


TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno203
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HAVE_NEON := true
TARGET_BOOTLOADER_BOARD_NAME := delos3geur

# QCOM enhancements
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true


# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M
BOARD_KERNEL_BASE := 0x00200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CONFIG := cyanogenmod_delos3geur_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/delos3geur

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28651290624
BOARD_FLASH_BLOCK_SIZE := 131072

# Audio
BOARD_HAVE_SAMSUNG_AUDIO := true
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_FLUENCE_FOR_VOIP := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO:= false

BOARD_USES_QCOM_HARDWARE := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_USES_QCOM_BSP := true
TARGET_QCOM_MEDIA_VARIANT := legacy
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true

# Wifi related definitions
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := ath6kl
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/ath6kl.ko"
WIFI_DRIVER_MODULE_NAME     := "ath6kl"

# Adreno configuration
BOARD_EGL_CFG := device/samsung/delos3geur/configuration/egl.cfg
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/delos3geur/bluetooth

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/delos3geur/libril/
BOARD_USES_LEGACY_RIL := true
BOARD_USES_LIBSECRIL_STUB := true

# Recovery
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/delos3geur/recovery.fstab
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/delos3geur/recovery/graphics.c

# Misc
BOARD_EGL_NEEDS_LEGACY_FB := true

# TWRP specific build flags
DEVICE_RESOLUTION := 480x800
