# Api
PRODUCT_SHIPPING_API_LEVEL := 28

ifeq ($(GINKGO_DYNAMIC), true)
# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
	fastbootd
endif

# qcom decryption
PRODUCT_PACKAGES_ENG += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Custom ROM asserts
TARGET_OTA_ASSERT_DEVICE := ginkgo,willow

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
