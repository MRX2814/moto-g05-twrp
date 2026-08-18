DEVICE_PATH := device/motorola/lamul
COMMON_PATH := device/motorola/mt6768-common

include $(COMMON_PATH)/BoardConfigCommon.mk

# Moto G05 stock VVTAS35.51-153-3 uses a 64 MiB vendor_boot partition.
# Keep this device-tree invariant explicit so standalone validation does not
# depend on the contents of the external mt6768-common tree.
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864

TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_FASTBOOTD := true
TW_USE_TOOLBOX := true

TARGET_SCREEN_DENSITY := 280
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
