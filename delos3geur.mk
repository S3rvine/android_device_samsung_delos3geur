#
# Copyright (C) 2011 The Android Open-Source Project
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
LOCAL_PATH := device/samsung/delos3geur
DEVICE_PACKAGE_OVERLAYS := device/samsung/delos3geur/overlay


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Audio
PRODUCT_PACKAGES += \
	audio.primary.msm7627a \
	audio.primary.default \
   	audio_policy.msm7627a \
    	audio_policy.default \
    	audio.a2dp.default \
    	audio_policy.conf \
    	libaudioutils
  
# Video decoding
PRODUCT_PACKAGES += \
    	libmm-omxcore \
    	libstagefrighthw \
    	libOmxCore \
    	libI420colorconvert \
    	libdashplayer \
    	qcmediaplayer
  
# HW
PRODUCT_PACKAGES += \
    	libgenlock \
    	liboverlay \
    	gralloc.msm7627a \
    	hwcomposer.msm7627a \
    	copybit.msm7627a \
    	libtilerenderer \
    	libqdMetaData


# Bluetooth
PRODUCT_PACKAGES += \
    	hciconfig \
    	hcitool

# Misc
PRODUCT_PACKAGES += \
    	com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    	LiveWallpapers \
    	LiveWallpapersPicker \
    	MagicSmokeWallpapers \
    	HoloSpiralWallpaper \
    	VisualizationWallpapers \
    	librs_jni

# Power HAL
PRODUCT_PACKAGES += \
    	power.msm7627a
	
# Light HALO
PRODUCT_PACKAGES += \
    	lights.msm7627a
	
# GPS
PRODUCT_PACKAGES += \
    	gps.default
    
# Camera
PRODUCT_PACKAGES += \
    	camera.msm7627a	
	
# Include non-opensource parts
$(call inherit-product, vendor/samsung/delos3geur/delos3geur-vendor.mk)
