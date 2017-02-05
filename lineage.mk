# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit some common Lineage stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/blu/d790q/device.mk)

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_d790q
PRODUCT_BRAND := BLU
PRODUCT_MODEL := BLU STUDIO G
PRODUCT_DEVICE := d790q

