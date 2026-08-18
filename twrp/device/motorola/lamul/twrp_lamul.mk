$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := lamul
PRODUCT_NAME := twrp_lamul
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g05
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola
