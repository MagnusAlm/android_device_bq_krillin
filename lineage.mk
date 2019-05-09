# Inherit needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/bq/krillin/device.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set LOCAL_PATH
LOCAL_PATH := device/bq/krillin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="krillin"

PRODUCT_NAME := lineage_krillin
PRODUCT_DEVICE :=krillin
PRODUCT_BRAND := bq
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := Aquaris E4.5

# set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Inherit some common CM stuff.
CM_BUILDTYPE := UNOFFICIAL

# Krillin specific propierties
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
