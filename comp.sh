/android/android-arm/bin/arm-linux-eabi-gcc test.c  -nostdlib -lc -L /android/android-ndk-r4b/build/platforms/android-4/arch-arm/usr/lib/ -Wl,-rpath-link=/android/android-ndk-r4b/build/platforms/android-4/arch-arm/usr/lib/ /android/android-ndk-r4b/build/platforms/android-4/arch-arm/usr/lib/crtbegin_dynamic.o -I /android/android-ndk-r4b/build/platforms/android-4/arch-arm/usr/include/ -o test
