#
# Copyright (C) 2018-2024 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/sm6150.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="violet-user 10 QKQ1.190915.002 V12.5.1.0.QFHINXM release-keys" \
    BuildFingerprint="xiaomi/violet/violet:10/QKQ1.190915.002/V12.5.1.0.QFHINXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Infinity-X Flags
INFINITY_MAINTAINER := SK_Sifat
WITH_GAPPS := false

# Camera torch strength extension
PRODUCT_PACKAGES += \
    libcameraservice_extension.sm6150
