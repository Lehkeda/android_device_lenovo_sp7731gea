# Release name
PRODUCT_RELEASE_NAME := sp7731gea

# Inherit device configuration
$(call inherit-product, device/lenovo/sp7731gea/full_sp7731gea.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sp7731gea \
    TARGET_DEVICE=sp7731gea 
    

PRODUCT_NAME := cm_sp7731gea
PRODUCT_DEVICE := sp7731gea
