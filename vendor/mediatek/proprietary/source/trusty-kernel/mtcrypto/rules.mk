LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_SRCS := \
	$(LOCAL_DIR)/mtcrypto.c \
	$(LOCAL_DIR)/mtcrypto_hwrng.c \
	$(LOCAL_DIR)/mtcrypto_hwkey.c \

MODULE_DEPS := \
	lib/trusty \
	interface/hwrng \
	interface/hwkey \

include make/module.mk
