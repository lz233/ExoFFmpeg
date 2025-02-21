#
# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libavcodec
LOCAL_SRC_FILES := android-libs/$(TARGET_ARCH_ABI)/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libavutil
LOCAL_SRC_FILES := android-libs/$(TARGET_ARCH_ABI)/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libavformat
LOCAL_SRC_FILES := android-libs/$(TARGET_ARCH_ABI)/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libswresample
LOCAL_SRC_FILES := android-libs/$(TARGET_ARCH_ABI)/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ffmpeg
LOCAL_SRC_FILES := $(LOCAL_PATH)/src/FFmpegTest.c
LOCAL_C_INCLUDES :=  /home/glee/Develop/ExoFFmpeg/ExoPlayer/extensions/ffmpeg/src/main/jni/include
LOCAL_SHARED_LIBRARIES := libavcodec  libavutil libavformat libswresample
LOCAL_LDLIBS := -Lffmpeg/android-libs/$(TARGET_ARCH_ABI) -llog
include $(BUILD_SHARED_LIBRARY)
