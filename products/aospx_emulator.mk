# Inherit AOSP device configuration for grouper.
$(call inherit-product, build/target/product/full.mk)

# Inherit common product files.
$(call inherit-product, vendor/aospx/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := aospx_emulator
PRODUCT_BRAND := Android
PRODUCT_DEVICE := generic
PRODUCT_MODEL := Emulator