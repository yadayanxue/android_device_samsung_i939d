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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from i939d device
$(call inherit-product, device/samsung/i939d/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := full_i939d
PRODUCT_DEVICE := i939d
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I939D
PRODUCT_MANUFACTURER := samsung
