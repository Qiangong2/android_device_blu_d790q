# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit some common Lineage stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/blu/d790q/device.mk)

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_LOCALES := en_US es_US es_ES pt_PT pt_BR nl_NL zh_CN fr_FR de_DE el_GR hu_HU cs_CZ pl_PL ar_EG fa_IR sr_RS ru_RU iw_IL bg_BG vi_VN hr_HR zh_TW th_TH ja_JP tl_PH in_ID my_MM bn_BD ms_MY

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_d790q
PRODUCT_BRAND := BLU
PRODUCT_MODEL := BLU STUDIO G
PRODUCT_DEVICE := d790q

