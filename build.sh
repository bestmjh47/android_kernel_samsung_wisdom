#!/bin/bash

rm -rf arch/arm64/boot/Image
rm -rf arch/arm64/boot/dts/exynos/dtbo/*.dtb 
rm -rf arch/arm64/boot/dts/exynos/dtbo/*.dtbo
rm -rf out

mkdir out

export CROSS_COMPILE=$HOME/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export PLATFORM_VERSION=11
export ANDROID_MAJOR_VERSION=r
export ARCH=arm64

make ARCH=arm64 exynos7885-wisdom_defconfig
make ARCH=arm64 -j8

cp -rp arch/arm64/boot/Image out/
cp -rp arch/arm64/boot/dts/exynos/dtbo/*.dtb out/
cp -rp arch/arm64/boot/dts/exynos/dtbo/*.dtbo out/
