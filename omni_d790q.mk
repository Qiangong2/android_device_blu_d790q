# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) # If you are building for a phone

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)  # If you are building for a tablet

# Inherit device configuration
$(call inherit-product, device/blu/d790q/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_d790q
PRODUCT_DEVICE := d790q
PRODUCT_BRAND := BLU
PRODUCT_MODEL := d790q
PRODUCT_MANUFACTURER := BLU

# If needed to overide these props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="" \
    PRIVATE_BUILD_DESC=""
    
