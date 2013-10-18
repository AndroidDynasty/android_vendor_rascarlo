# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/aospx/configs/common.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/aospx/configs/gsm.mk)

# Inherit media effect blobs
-include vendor/aospx/configs/common_media_effects.mk

# Boot Animation
PRODUCT_COPY_FILES += \
   vendor/aospx/proprietary/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_NAME := aospx_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.3.1/JLS36I/737497:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.3.1 JLS36I 737497 release-keys"