# Copyright (C) 2018 The Android Open Source Project
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

 LOCAL_PATH := $(call my-dir)

 include $(CLEAR_VARS)

 LOCAL_MODULE_RELATIVE_PATH := hw

 LOCAL_SHARED_LIBRARIES := \
    libbase \
    libhidlbase \
    libhidltransport \
    liblog \
    libutils \
    libcutils \
    android.hardware.power@1.0 \
    android.hardware.power@1.1 \
    android.hardware.power@1.2 \
    libperfmgr

 LOCAL_SRC_FILES := \
    service.cpp \
    Power.cpp \
    InteractionHandler.cpp \
    power-helper.c 

LOCAL_CFLAGS += -Wall -Werror
LOCAL_CFLAGS += -DTAP_TO_WAKE_NODE=\"$(TARGET_TAP_TO_WAKE_NODE)\"

 LOCAL_MODULE := android.hardware.power@1.2-service.dipper-libperfmgr
LOCAL_INIT_RC := android.hardware.power@1.2-service.dipper-libperfmgr.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xiaomi
LOCAL_VENDOR_MODULE := true
include $(BUILD_EXECUTABLE)