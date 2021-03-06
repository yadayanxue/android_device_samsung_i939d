#
# Copyright (C) 2020 The LineageOS Project
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

# Release name
PRODUCT_RELEASE_NAME := i939d

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i939d/full_i939d.mk)


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i939d
PRODUCT_NAME := lineage_i939d
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I939D
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
		PRODUCT_NAME=m0ctcduos \
		TARGET_DEVICE=m0ctc \
		BUILD_FINGERPRINT="samsung/m0ctcduos/m0ctcduos:4.3/JSS15J/I939DKEUBOA1:user/release-keys" \
		PRIVATE_BUILD_DESC="m0ctcduos-user 4.3 JSS15J I939DKEUBOA1 release-keys"

BUILD_FINGERPRINT := samsung/m0ctcduos/m0ctcduos:4.3/JSS15J/I939DKEUBOA1:user/release-keys
