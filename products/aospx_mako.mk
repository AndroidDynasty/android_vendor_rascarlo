# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

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
PRODUCT_NAME := aospx_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.3.1/JLS36I/737497:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.3.1 JLS36I 737497 release-keys"