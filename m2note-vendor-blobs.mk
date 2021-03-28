# copy whole folders

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/meizu/m2note/usr,system/usr)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/meizu/m2note/vendor,system/vendor)


ifeq ($(TARGET_DEVICE),m2note)

include $(CLEAR_VARS)
LOCAL_MODULE := librilmtk
LOCAL_MODULE_OWNER := memezu
LOCAL_SRC_FILES_64 := vendor/lib64/librilmtk.so
LOCAL_SRC_FILES_32 := vendor/lib/librilmtk.so
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := mtk-ril
LOCAL_MODULE_OWNER := memezu
LOCAL_SRC_FILES_64 := vendor/lib64/mtk-ril.so
LOCAL_SRC_FILES_32 := vendor/lib/mtk-ril.so
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)

endif

PRODUCT_PACKAGES += \
    mtk-ril \
    librilmtk
