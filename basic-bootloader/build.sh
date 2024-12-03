#!/bin/bash

# Ассемблируем загрузчик
nasm -f bin boot.asm -o bootloader.bin

# Запускаем в QEMU
qemu-system-i386 -fda bootloader.bin
