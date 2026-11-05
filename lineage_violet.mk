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

# Dolby (must be set before sm6150.mk is inherited)
TARGET_USES_DOLBY := true

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/sm6150.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="violet-user 10 QKQ1.190915.002 V12.5.1.0.QFHINXM release-keys" \
    BuildFingerprint="xiaomi/violet/violet:10/QKQ1.190915.002/V12.5.1.0.QFHINXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Camera torch strength extension
PRODUCT_PACKAGES += \
    libcameraservice_extension.sm6150

# Dolby
$(call inherit-product, vendor/oneplus/dolby/dolby.mk)

# MIUI camera (uncomment after checking the .mk filename in vendor/miuicamera-violet)
# $(call inherit-product, vendor/miuicamera-violet/device.mk)

# OTA packaging fix
PRODUCT_SYSTEM_PROPERTIES += ro.build.product=violet

# RisingOS
WITH_GMS := true
RISING_MAINTAINER := sexaoggy
