#
# Copyright (C) 2007 The Android Open Source Project
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

# Set this to debug or release if you care.  Otherwise, it defaults to
# release for arm and debug for the simulator.
TARGET_BUILD_TYPE:=release

# Specify an alternative tool chain prefix if needed.
TARGET_ARCH:=arm
TARGET_ARCH_VARIANT:=armv4t
TARGET_TOOLS_PREFIX:=prebuilt/linux-x86/toolchain/armv4t-android-eabi-4.2.1/bin/armv4t-android-eabi-

TARGET_PRODUCT:=SciphoneN19

# must install uboot-mkimage package for debian/ubuntu
TARGET_RAMDISK_TOOLS:=uboot

# when the build system changes such that this file must be updated, this
# variable will be changed.  After you have modified this file with the new
# changes (see buildspec.mk.default), update this to the new value from
# buildspec.mk.default.
BUILD_ENV_SEQUENCE_NUMBER := 9
