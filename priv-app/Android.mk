# Copyright (C) 2017 AEX.mod
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
LOCAL_MODULE := MiuiCamera
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := MiuiCamera/MiuiCamera.apk
LOCAL_REQUIRED_MODULES := libCameraEffectJNI64 libCameraEffectJNI libminui64 libminui32 libmorpho_group_portrait64 libmorpho_group_portrait libmorpho_groupshot \
			  libmorpho_groupshot64 libmorpho_panorama_gp libmorpho_panorama_gp64 libMiCameraHal libts_detected_face_hal libts_face_beautify_hal \
			  org.codeaurora.camera.jar
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libCameraEffectJNI
LOCAL_SRC_FILES := MiuiCamera/lib/arm/libCameraEffectJNI.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libCameraEffectJNI64
LOCAL_SRC_FILES := MiuiCamera/lib/arm64/libCameraEffectJNI.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm64
LOCAL_POST_INSTALL_CMD := $(hide) mv $(LOCAL_MODULE_PATH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX) \
			$(LOCAL_MODULE_PATH)/libCameraEffectJNI$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libminui32
LOCAL_SRC_FILES := MiuiCamera/lib/arm/libminui.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm
LOCAL_POST_INSTALL_CMD := $(hide) mv $(LOCAL_MODULE_PATH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX) \
			$(LOCAL_MODULE_PATH)/libminui$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libminui64
LOCAL_SRC_FILES := MiuiCamera/lib/arm64/libminui.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := miui
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm64
LOCAL_POST_INSTALL_CMD := $(hide) mv $(LOCAL_MODULE_PATH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX) \
			$(LOCAL_MODULE_PATH)/libminui$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libmorpho_group_portrait
LOCAL_SRC_FILES := MiuiCamera/lib/arm/libmorpho_group_portrait.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libmorpho_group_portrait64
LOCAL_SRC_FILES := MiuiCamera/lib/arm64/libmorpho_group_portrait.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm64
LOCAL_POST_INSTALL_CMD := $(hide) mv $(LOCAL_MODULE_PATH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX) \
			$(LOCAL_MODULE_PATH)/libmorpho_group_portrait$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libmorpho_groupshot
LOCAL_SRC_FILES := MiuiCamera/lib/arm/libmorpho_groupshot.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libmorpho_groupshot64
LOCAL_SRC_FILES := MiuiCamera/lib/arm64/libmorpho_groupshot.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm64
LOCAL_POST_INSTALL_CMD := $(hide) mv $(LOCAL_MODULE_PATH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX) \
			$(LOCAL_MODULE_PATH)/libmorpho_groupshot$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libmorpho_panorama_gp
LOCAL_SRC_FILES := MiuiCamera/lib/arm/libmorpho_panorama_gp.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libmorpho_panorama_gp64
LOCAL_SRC_FILES := MiuiCamera/lib/arm64/libmorpho_panorama_gp.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm64
LOCAL_POST_INSTALL_CMD := $(hide) mv $(LOCAL_MODULE_PATH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX) \
			$(LOCAL_MODULE_PATH)/libmorpho_panorama_gp$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libMiCameraHal
LOCAL_SRC_FILES := MiuiCamera/lib/arm/libMiCameraHal.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE :=  libts_detected_face_hal
LOCAL_SRC_FILES := MiuiCamera/lib/arm/libts_detected_face_hal.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE :=  libts_face_beautify_hal
LOCAL_SRC_FILES := MiuiCamera/lib/arm/libts_face_beautify_hal.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera/lib/arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := org.codeaurora.camera.jar
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := MiuiCamera/framework/org.codeaurora.camera.jar
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
