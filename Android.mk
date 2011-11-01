LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := ptunnel.c md5.c

LOCAL_MODULE := ptunnel

LOCAL_CLFAGS += -g -O2 -Wall -Wextra -Wno-long-long -pedantic

LOCAL_C_INCLUDES += external/libpcap

LOCAL_STATIC_LIBRARIES := \
	libpcap \
	libc

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libbinder \
	libutils \
	libdl

LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
