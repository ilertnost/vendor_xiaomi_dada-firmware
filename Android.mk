#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),dada)

$(info Including firmware for dada...)

FIRMWARE_IMAGES := $(wildcard $(LOCAL_PATH)/images/*)

$(foreach f, $(notdir $(FIRMWARE_IMAGES)), \
    $(call add-radio-file,images/$(f)))

endif
