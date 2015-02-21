LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
    sgdisk.cc \
    gptcl.cc \
    crc32.cc \
    support.cc \
    guid.cc \
    gptpart.cc \
    mbrpart.cc \
    basicmbr.cc \
    mbr.cc \
    gpt.cc \
    bsd.cc \
    parttypes.cc \
    attributes.cc \
    diskio.cc \
    diskio-unix.cc \
    android_popt.cc \

LOCAL_SHARED_LIBRARIES := libext2_uuid

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := sgdisk

include $(BUILD_EXECUTABLE)
