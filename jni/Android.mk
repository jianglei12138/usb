LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  libusb/core.c \
  libusb/descriptor.c \
  libusb/hotplug.c \
  libusb/io.c \
  libusb/sync.c \
  libusb/strerror.c \
  libusb/os/linux_usbfs.c \
  libusb/os/poll_posix.c \
  libusb/os/threads_posix.c \
  libusb/os/linux_netlink.c

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/.. \
  $(LOCAL_PATH)/libusb \
  $(LOCAL_PATH)/libusb/os

LOCAL_LDLIBS := -llog

LOCAL_MODULE := libusb

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
