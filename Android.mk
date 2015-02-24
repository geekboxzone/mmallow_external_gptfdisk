LOCAL_PATH := $(call my-dir)

sgdisk_src_files := \
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

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := $(sgdisk_src_files)

LOCAL_SHARED_LIBRARIES := libext2_uuid

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := sgdisk

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := $(sgdisk_src_files)

LOCAL_CFLAGS := -D__ANDROID__
LOCAL_SHARED_LIBRARIES := libext2_uuid_host

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := sgdisk_host
LOCAL_MODULE_STEM := sgdisk

include $(BUILD_HOST_EXECUTABLE)
