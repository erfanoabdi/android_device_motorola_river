#
# Copyright (C) 2019 The SuperiorOS Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Superior stuff
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from river device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := river
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := superior_river
PRODUCT_MODEL := moto g(7)

# Target Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Maintainer SuperiorOS for River
        ro.superior.maintainer=tailan_cunha

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=river \
        PRIVATE_BUILD_DESC="river-user 9 PPOS29.114-134-4 fe214 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/river/river:9/PPOS29.114-134-4/fe214:user/release-keys
