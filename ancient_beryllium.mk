#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common ancient stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)
ANCIENT_OFFICIAL ?= true
ANCIENT_GAPPS ?= true
TARGET_USES_BLUR := true

# Gapps Sector
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# Bootlogo sector
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2246
TARGET_SCREEN_WIDTH := 1080

# FaceUnlock Sector
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ancient_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210405.005 7181113 release-keys" \
    PRODUCT_NAME="beryllium"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi-rev1
