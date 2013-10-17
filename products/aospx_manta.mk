# Inherit AOSP device configuration for manta.
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit common product files.
$(call inherit-product, vendor/aospx/configs/common.mk)

# Inherit media effect blobs
-include vendor/aospx/configs/common_media_effects.mk

# Setup device specific product configuration.
PRODUCT_NAME := configs_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.3.1/JLS36I/737497:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.3.1 JLS36I 737497 release-keys"