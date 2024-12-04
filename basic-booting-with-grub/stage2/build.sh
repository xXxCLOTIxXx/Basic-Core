#!/bin/bash

SRC_DIR="src"
BUILD_DIR="build"


rm -rf  $BUILD_DIR
mkdir -p $BUILD_DIR


echo "boot compiling..."
nasm -f elf32 -o $BUILD_DIR/boot.o $SRC_DIR/boot.asm

echo "Kernel compiling..."
gcc -m32 -c -o $BUILD_DIR/kernel.o $SRC_DIR/kernel/kernel.c -std=gnu99 -ffreestanding -O2

echo "Linking..."
ld -m elf_i386 -T linker.ld -o $BUILD_DIR/kernel.elf $BUILD_DIR/boot.o $BUILD_DIR/kernel.o

echo "Success!"

mkdir -p $BUILD_DIR/iso/boot/grub
cp $BUILD_DIR/kernel.elf $BUILD_DIR/iso/boot/kernel.elf
cp grub.cfg $BUILD_DIR/iso/boot/grub/grub.cfg
grub-mkrescue -o basicOS.iso $BUILD_DIR/iso



qemu-system-i386 -cdrom basicOS.iso
