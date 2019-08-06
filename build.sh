export CFLAGS=" -DCONFIG_MALI_MIDGARD -DCONFIG_MALI_MIDGARD_MODULE -DCONFIG_MALI_DEVFREQ \
        -DCONFIG_MALI_DMA_FENCE -DCONFIG_MALI_EXPERT -DCONFIG_MALI_PLATFORM_THIRDPARTY \
        -DCONFIG_MALI_PLATFORM_THIRDPARTY_NAME=rk -I ${PWD}/include"


# export ARCH=arm
# export CROSS_COMPILE=arm-linux-gnueabihf-

export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-

make -j 4 KERNEL_SRC=/home/jagan/work/code/linux-rockchip \
    KERNEL_PATH=/home/jagan/work/code/linux-rockchip \
    CONFIG_MALI_MIDGARD=m CONFIG_MALI_DEVFREQ=y CONFIG_MALI_DMA_FENCE=y \
    CONFIG_MALI_EXPERT=y CONFIG_MALI_PLATFORM_THIRDPARTY=y CONFIG_MALI_PLATFORM_THIRDPARTY_NAME=rk


# ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make M=$PWD -C ~/rk3288/linux CONFIG_MALI_MIDGARD=m CONFIG_MALI_DEVFREQ=y CONFIG_MALI_DMA_FENCE=y CONFIG_MALI_EXPERT=y CONFIG_MALI_PLATFORM_THIRDPARTY=y CONFIG_MALI_PLATFORM_THIRDPARTY_NAME=rk
