#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Environment Flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

#Pixefy
PIXEFY_MAINTAINER := TanujD
CUSTOM_BUILD_TYPE := OFFICIAL

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := aosp_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

PRODUCT_SYSTEM_NAME := Pong
PRODUCT_SYSTEM_DEVICE := Pong

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Pong-user 12 SKQ1.230722.001 2312082206 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Nothing/Pong/Pong:12/SKQ1.230722.001/2312082206:user/release-keys
