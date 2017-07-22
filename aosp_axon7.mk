IS_ARM64 := true

# Include Official OTA Package
WITH_OFFICIALOTA := true

# Get the long list of APNs
PRODUCT_COPY_FILES := device/zte/axon7/apns-full-conf.xml:system/etc/apns-conf.xml

# Include pure telephony configuration
$(call inherit-product, vendor/pure/configs/pure_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from idol3 device
$(call inherit-product, device/zte/axon7/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := axon7
PRODUCT_NAME := aosp_axon7
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE A2017U
PRODUCT_MANUFACTURER := ZTE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="P996A01_N" \
    BUILD_FINGERPRINT="ZTE/P996A01_N/ailsa_ii:7.0/NRD90M/20170128.052618:user/release-keys" \
    PRIVATE_BUILD_DESC="P996A01_N-user 7.0 NRD90M 20170128.052618 release-keys"
