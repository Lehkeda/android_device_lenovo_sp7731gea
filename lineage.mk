## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := sp7731gea

# Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/sp7731gea/full_sp7731gea.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sp7731gea \
    TARGET_DEVICE=sp7731gea 
    

PRODUCT_NAME := lineage_sp7731gea
PRODUCT_DEVICE := sp7731gea
