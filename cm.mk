# Release name
PRODUCT_RELEASE_NAME := d790q

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/blu/d790q/device_d790q.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d790q
PRODUCT_NAME := cm_d790q
PRODUCT_BRAND := blu
PRODUCT_MODEL := d790q
PRODUCT_MANUFACTURER := blu
