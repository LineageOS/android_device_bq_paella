# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bq/paella/full_paella.mk)

PRODUCT_RELEASE_NAME := Aquaris X5
PRODUCT_NAME := lineage_paella

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=Aquaris_X5 PRODUCT_NAME=Aquaris_X5

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=bq/Aquaris_X5/Aquaris_X5:7.1.2/N2G47H/1519827315:user/release-keys \
    PRIVATE_BUILD_DESC="picmt-user 7.1.2 N2G47H 5.2.0_20180228-1305 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-bq

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2018-01-05
