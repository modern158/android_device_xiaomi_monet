#
# Copyright (C) 2020 RevengeOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

# Inherit some common RevenggeOS stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := revengeos_monet
PRODUCT_DEVICE := monet
PRODUCT_BRAND := Mi
PRODUCT_MODEL := Mi 10 Lite 5G
PRODUCT_MANUFACTURER := Mi

# Google Apps
WITH_GAPPS=true
TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# RevengeOS Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="xSylla"

# Adds face unlock if package is available on ROM source.
TARGET_SUPPORT_FACE_UNLOCK := true

# Build info
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=monet \
    PRODUCT_NAME=monet \
    PRIVATE_BUILD_DISC="redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi