#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
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

# Define platform before including any common things
$(call inherit-product, $(LOCAL_PATH)/PlatformConfig.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from land device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := blu
PRODUCT_DEVICE := life_one_x2
PRODUCT_MANUFACTURER := blu
PRODUCT_NAME := lineage_life_one_x2

PRODUCT_GMS_CLIENTID_BASE := android-life_one_x2

TARGET_VENDOR_PRODUCT_NAME := life_one_x2

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=BLU/Life_One_X2/Life_One_X2:6.0.1/MMB29M/1477622278:user/release-keys \
    PRIVATE_BUILD_DESC="p7701-user 6.0.1 MMB29M eng.android.1477619128 release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model
