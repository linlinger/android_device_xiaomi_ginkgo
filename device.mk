# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# API
PRODUCT_SHIPPING_API_LEVEL := 28

# Custom ROM asserts
TARGET_OTA_ASSERT_DEVICE := ginkgo,willow

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl.recovery

# qcom decryption
PRODUCT_PACKAGES_ENG += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
