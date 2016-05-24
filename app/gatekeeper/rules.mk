LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

GATEKEEPER_ROOT := $(ANDROIDMAKEROOT)/system/gatekeeper

MODULE_SRCS += \
	$(LOCAL_DIR)/manifest.c \
	$(LOCAL_DIR)/trusty_gatekeeper.cpp \

IPC := ipc

MODULE_DEPS += \
	app/trusty \
	lib/libc-trusty \
	lib/libstdc++-trusty \
	lib/rng \
	lib/hwkey \
	lib/storage \
	lib/keymaster \
	$(GATEKEEPER_ROOT) \

MODULE_INCLUDES += \
	$(LOCAL_DIR)

GLOBAL_INCLUDES += \
	$(GATEKEEPER_ROOT)/../../hardware/libhardware/include \

include $(LOCAL_DIR)/$(IPC)/rules.mk

include make/module.mk

