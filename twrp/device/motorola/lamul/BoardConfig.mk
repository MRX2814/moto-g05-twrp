DEVICE_PATH := device/motorola/lamul
COMMON_PATH := device/motorola/mt6768-common

include $(COMMON_PATH)/BoardConfigCommon.mk

# Moto G05 stock VVTAS35.51-153-3 uses a 64 MiB vendor_boot partition.
# Keep this device-tree invariant explicit so standalone validation does not
# depend on the contents of the external mt6768-common tree.
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864

# Stock 6.6 GKI payloads extracted from boot_a/vendor_boot_a. The PLATFORM
# fragment is preserved byte-for-byte; TWRP supplies the RECOVERY fragment.
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt
BOARD_VENDOR_RAMDISK_FRAGMENTS := platform
BOARD_VENDOR_RAMDISK_FRAGMENT.platform.PREBUILT := $(DEVICE_PATH)/prebuilt/vendor_ramdisk00.lz4
BOARD_VENDOR_RAMDISK_FRAGMENT.platform.MKBOOTIMG_ARGS := --ramdisk_type PLATFORM

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_FASTBOOTD := true
TW_USE_TOOLBOX := true

TARGET_SCREEN_DENSITY := 280
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
