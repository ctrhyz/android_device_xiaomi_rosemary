#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rosemary/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := "ZxhCarkecor | ctrhyz"
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := false
WITH_GAPPS := false
TARGET_BUILD_GOOGLE_TELEPHONY := false
TARGET_SUPPORTS_TOUCHGESTURES := false
TARGET_BUILD_VIMUSIC := false
USE_MOTO_CALCULATOR := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

PRODUCT_NAME := lineage_rosemary
PRODUCT_DEVICE := rosemary
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7BNY

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rosemary-user 12 SP1A.210812.016 V14.0.7.0.TKLMIXM release-keys" \
    INFINITY_MAINTAINER="ZxhCarkecor | ctrhyz"

BUILD_FINGERPRINT := Redmi/rosemary_global/rosemary:12/SP1A.210812.016/V14.0.7.0.TKLMIXM:user/release-keys
