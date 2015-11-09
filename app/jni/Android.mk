LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_INSTALL_MODULES:=on
OPENCV_LIB_TYPE:=SHARED

include /home/cobalt/Android/OpenCV-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE    := feature_sample
LOCAL_SRC_FILES := mainActivityJNI.cpp
LOCAL_LDLIBS +=  -llog -ldl

include $(BUILD_SHARED_LIBRARY)
