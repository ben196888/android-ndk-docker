HOME=/opt/android-ndk-r12b

CROSS=$(HOME)/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin/aarch64-linux-android-
EXENAME = hello_world

SRCS = hello_world.c

CFLAGS  = -DDEBUG_SCRIPT
CFLAGS += -pie -fPIE

SYSROOT = --sysroot=$(HOME)/platforms/android-23/arch-arm64/
INCLOUDS = -I usr/include
LIBS = -L usr/lib

all:
	# cross compile
	$(CROSS)gcc $(SYSROOT) $(INCLOUDS) $(LIBS) -o $(EXENAME) $(SRCS) $(CFLAGS)

clean:
	@rm -rf hello_world
