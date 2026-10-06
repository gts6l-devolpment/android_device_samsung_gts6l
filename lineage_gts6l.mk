#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from qssi device
$(call inherit-product, device/samsung/gts6l/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := qssi
PRODUCT_NAME := lineage_gts6l
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T865
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gts6lxx-user 12 SP2A.220305.013 T865XXU6DXJ2 release-keys" \
    BuildFingerprint=samsung/gts6lxx/qssi:12/SP2A.220305.013/T865XXU6DXJ2:user/release-keys
