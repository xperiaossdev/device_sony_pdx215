#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Environment Flags
IS_PHONE := true

# Boot Animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1096
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# AlphaDroid-Specific Flags
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
USE_PIXEL_CHARGING := true
TARGET_INCLUDE_MATLOG := false
EXTRA_UDFPS_ANIMATIONS := false
TARGET_USE_PIXEL_LAUNCHER := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_CARRIER_SETTINGS := false

# Un|Officialify
ALPHA_BUILD_TYPE := UNOFFICIAL
ALPHA_MAINTAINER :=

# GMS Architecture
TARGET_GAPPS_ARCH := arm64

# Device Identifiers
PRODUCT_NAME := lineage_pdx215
PRODUCT_DEVICE := pdx215
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia 1 III

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="XQ-BC52-user 13 61.2.A.0.447 061002A000044700046651803 release-keys"


BUILD_FINGERPRINT := Sony/XQ-BC52/XQ-BC52:13/61.2.A.0.447/061002A000044700046651803:user/release-keys
