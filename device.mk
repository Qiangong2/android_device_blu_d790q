# Device.mk for BLU STUDIO G D790Q
#

# If there, include non-open source parts
-include vendor/blu/d790q/d790qVendor.mk

PRODUCT_COPY_FILES += device/blu/d790q/init.mt6580.rc:root/init.mt6580.rc
PRODUCT_COPY_FILES += device/blu/d790q/factory_init.rc:root/factory_init.rc
PRODUCT_COPY_FILES += device/blu/d790q/init.modem.rc:root/init.modem.rc
PRODUCT_COPY_FILES += device/blu/d790q/ueventd.mt6580.rc:root/ueventd.mt6580.rc
PRODUCT_COPY_FILES += device/blu/d790q/recovery/root/fstab.mt6580:root/fstab.mt6580
PRODUCT_COPY_FILES += frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.config.low_ram=true