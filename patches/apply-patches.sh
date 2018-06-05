#!/bin/bash
cd ../../../..
cd frameworks/native
git reset --hard && git clean -f -d
patch -p1 < ../../device/motorola/nicklaus/patches/01-frameworks-native.patch
cd ../..
cd system/core
git reset --hard && git clean -f -d
patch -p1 < ../../device/motorola/nicklaus/patches/02-init-HACK-re-allow-services-without-selinux-contexts-defined.patch
patch -p1 < ../../device/motorola/nicklaus/patches/03-libnetutils-add-MTK-bits-ifc_ccmni_md_cfg.patch
patch -p1 < ../../device/motorola/nicklaus/patches/04-init-double-the-number-of-available-environment-variables.patch
cd ../..
cd frameworks/av
git reset --hard && git clean -f -d
patch -p1 < ../../device/mediatek/mt6737-common/patches/05-Add-MTKEngineerMode-support-av.patch
cd ../..
cd frameworks/base
git reset --hard && git clean -f -d
patch -p1 < ../../device/mediatek/mt6737-common/patches/06-Add-MTKEngineerMode-support-base.patch
cd ../..
cd system/netd
git reset --hard && git clean -f -d
patch -p1 < ../../device/mediatek/mt6737-common/patches/07-hotspot.patch
cd ../..
