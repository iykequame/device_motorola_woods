#!/bin/bash
cd ../../../..
cd system/core
git apply -R ../../device/motorola/woods/patches/00-system_core.patch
git apply -R ../../device/motorola/woods/patches/01-system_core.patch
cd ../..
cd hardware/interfaces
git apply -R ../../device/motorola/woods/patches/02-hardware_interfaces.patch
cd ../..
cd system/core
git apply -R ../../device/motorola/woods/patches/03-system_sepolicy.patch
cd ../..
