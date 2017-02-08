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
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Hardware
PRODUCT_COPY_FILES += device/blu/d790q/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
PRODUCT_COPY_FILES += device/blu/d790q/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml
PRODUCT_COPY_FILES += device/blu/d790q/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml
PRODUCT_COPY_FILES += device/blu/d790q/audio_policy.conf:system/etc/audio_policy.conf

# RIL
PRODUCT_COPY_FILES += device/blu/d790q/apns-conf.xml:system/etc/apns-conf.xml
PRODUCT_COPY_FILES += device/blu/d790q/spn-conf.xml:system/etc/spn-conf.xml

# Overrides
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.config.low_ram=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += camera.disable_zsl_mode=1
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=2
PRODUCT_PROPERTY_OVERRIDES += persist.radio.default.sim=0
PRODUCT_PROPERTY_OVERRIDES += ro.mtk_multisim_ringtone=1

# Packages
PRODUCT_PACKAGES += libvcodec_utility
PRODUCT_PACKAGES += libvcodec_oal
PRODUCT_PACKAGES += FMRadio
