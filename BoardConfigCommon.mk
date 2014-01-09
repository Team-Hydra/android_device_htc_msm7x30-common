# Copyright (C) 2011 The CyanogenMod Project
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

BOARD_VENDOR := htc

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm7x30

# Platform
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
TARGET_ARCH_LOWMEM := true

# Recovery
USE_SET_METADATA := false

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# FB legacy
BOARD_EGL_NEEDS_LEGACY_FB := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_HAVE_HTC_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/htc/msm7x30-common/bluetooth/vnd_msm7x30.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/htc/msm7x30-common/bluetooth/include

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNO_UPDATE_PREVIEW -DNEEDS_VECTORIMPL_SYMBOLS
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true

# GPS
TARGET_PROVIDES_GPS_LOC_API := true
TARGET_QCOM_GPS_VARIANT := legacy
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200

# Graphics
BOARD_USES_ADRENO_200 := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_NO_HW_VSYNC := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DREFRESH_RATE=60 -DHTC_RGBA_8888_OFFSET
BOARD_EGL_CFG := device/htc/msm7x30-common/configs/egl.cfg
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_USES_ION := true

# Webkit
TARGET_FORCE_CPU_UPLOAD := true
ENABLE_WEBGL := true
