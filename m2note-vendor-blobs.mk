# copy whole folders

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/meizu/m2note/usr,system/usr)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/meizu/m2note/vendor,system/vendor)
