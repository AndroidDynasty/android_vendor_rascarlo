# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/aospx/configs/common.mk)

# Inherit media effect blobs
-include vendor/aospx/configs/common_media_effects.mk

# Setup device specific product configuration.
PRODUCT_NAME := aospx_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.3.1/JLS36I/737497:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.3.1 JLS36I 737497 release-keys"
