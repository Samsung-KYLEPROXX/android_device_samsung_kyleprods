LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        android_fmradio.cpp \
        android_fmradio_Receiver.cpp \
        android_fmradio_Transmitter.cpp

LOCAL_C_INCLUDES += \
        $(JNI_H_INCLUDE)\
        $(TOP)/frameworks/base/fmradio/include \
        $(TOP)/hardware/libhardware/include/hardware

LOCAL_SHARED_LIBRARIES :=  libcutils libutils liblog libmedia libz libbinder libandroid_runtime libandroidfw libnativehelper libRS libskia
LOCAL_STATIC_LIBRARIES := libmedia_helper

LOCAL_MODULE:= libanalogradiobroadcasting
LOCAL_MODULE_TAGS := optional
LOCAL_LDFLAGS := -ldl

include $(BUILD_SHARED_LIBRARY)

