# Copyright (C) 2008 The Android Open Source Project
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

ifeq ($(TARGET_DEVICE),kyleprods)
ifeq ($(TARGET_BOARD_PLATFORM),hawaii)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

ifeq (true,$(BOARD_HAVE_FM_RADIO))
ifneq (,$(filter bcm2049 bcm4325 bcm4329,$(BOARD_FM_DEVICE)))

ifeq ($(BOARD_FM_DEVICE),bcm2049)
LOCAL_CFLAGS += -DHAS_BCM20780
endif

LOCAL_SRC_FILES := libfmradio.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE := libfmradio.bcm4330
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif #BOARD_FM_DEVICE
endif #BOARD_HAVE_FM_RADIO

endif
endif
