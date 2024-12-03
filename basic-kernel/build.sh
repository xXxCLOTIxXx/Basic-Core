#!/bin/bash


BUILD_DIR=build


mkdir -p $BUILD_DIR

nasm -f elf src/boot.asm -o $BUILD_DIR/bootloader.o
gcc -m32 -ffreestanding -fno-pic -c src/kernel/kernel.cpp -o $BUILD_DIR/kernel.o

ld -m elf_i386 -T linker.ld -o $BUILD_DIR/kernel.elf \
    $BUILD_DIR/bootloader.o $BUILD_DIR/kernel.o
objcopy -O binary $BUILD_DIR/kernel.elf $BUILD_DIR/bootloader.bin

genisoimage -R -b bootloader.bin -no-emul-boot -boot-load-size 4 -o os.iso $BUILD_DIR/

rm -rf $BUILD_DIR

qemu-system-i386 -cdrom os.iso
