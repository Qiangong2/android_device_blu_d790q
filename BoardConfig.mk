# BoardConfig.mk for BLU Studio G D790Q
#

LOCAL_PATH := device/blu/d790q

# Target
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := mt6580

# Userimages
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=838860800
BOARD_CACHEIMAGE_PARTITION_SIZE:=134217728
BOARD_USERDATAIMAGE_PARTITION_SIZE:=1240465408
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 4096

# Kernel
BOARD_KERNEL_CMDLINE = bootopt=64S3,32S1,32S1
BOARD_KERNEL_BASE = 0x80000000
BOARD_KERNEL_OFFSET = 0x00008000
BOARD_RAMDISK_OFFSET = 0x04000000
BOARD_TAGS_OFFSET = 0xE000000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)
TARGET_KERNEL_SOURCE := kernel/blu/d790q
TARGET_KERNEL_CONFIG := lineage_d790q-defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.8

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/etc/recovery.fstab

# Headers
TARGET_BOARD_KERNEL_HEADERS := $(LOCAL_PATH)/kernel-headers

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Don't know what this does...
BOARD_SYSTEM_SIZE_KB := 1228800

# sepolicy
BOARD_SEPOLICY_DIRS +=  $(LOCAL_PATH)/sepolicy

# Miscellaneous
EXTENDED_FONT_FOOTPRINT := true
BUILD_NUMBER := $(shell date +%s)
USE_OPENGL_RENDERER := true