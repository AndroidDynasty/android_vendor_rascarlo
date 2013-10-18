# Generic product
PRODUCT_NAME := aospx
PRODUCT_BRAND := aospx
PRODUCT_DEVICE := generic

# SuperUser
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

# Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    persist.sys.root_access=3
    
# Optional Packages
PRODUCT_PACKAGES += \
    BlueBalls \
    SunBeam \
    Superuser \
    su \
    Torch

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aospx/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aospx/overlay/dictionaries

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# System/lib
PRODUCT_COPY_FILES += \
    vendor/aospx/proprietary/common/system/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/aospx/proprietary/common/system/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/aospx/proprietary/common/system/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so