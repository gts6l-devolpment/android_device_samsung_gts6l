#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gts6l device
$(call inherit-product, device/samsung/gts6l/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

PRODUCT_NAME := lineage_gts6l
PRODUCT_DEVICE := gts6l
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T865
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gts6lxx-user 12 SP2A.220305.013 T865XXU6DXE2 release-keys" \
    BuildFingerprint=samsung/gts6lxx/gts6l:11/RP1A.200720.012/T865XXU6DXE2:user/release-keys \
    DeviceProduct=gts6lxxx \
    SystemName=gts6lxxx
