#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths_qrd_skui.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skui.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/himax-touchscreen.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/himax-touchscreen.kl \
    $(LOCAL_PATH)/keylayout/msm8x16-skui-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8x16-skui-snd-card_Button_Jack.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=0

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.power.rc \
    init.target.rc

# Sensors
PRODUCT_PACKAGES += \
    AccCalibration \
    calmodule.cfg \
    sensord \
    sensors.msm8916 \
    libcalmodule_akm.so \
    libcalmodule_common

# Soft magnetic calibration
PRODUCT_COPY_FILES+= \
     $(LOCAL_PATH)/sensors/bst_fifo/daemon/softiron_matrix.txt:$(TARGET_COPY_OUT_VENDOR)/etc/sensor/softiron_matrix.txt
