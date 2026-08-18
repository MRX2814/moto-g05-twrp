DEVICE_PATH := device/motorola/lamul
COMMON_PATH := device/motorola/mt6768-common

include $(COMMON_PATH)/BoardConfigCommon.mk

TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_FASTBOOTD := true
TW_USE_TOOLBOX := true

TARGET_SCREEN_DENSITY := 280
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
