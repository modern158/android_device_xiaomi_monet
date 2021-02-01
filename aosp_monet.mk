#
# Copyright (C) 2021 RevengeOS
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

# Inherit device configuration
$(call inherit-product, device/xiaomi/monet/device.mk)

# Inherit some common Pixel Experience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
IS_PHONE := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_monet
PRODUCT_DEVICE := monet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10 Lite 5G
PRODUCT_MANUFACTURER := Xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="monet"

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
