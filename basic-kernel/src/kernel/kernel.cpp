#include <stdint.h>


volatile char* vga_buffer = (volatile char*)0xB8000;
static uint16_t vga_position = 0;


#define VGA_COLOR 0x07

// Функция для вывода текста
void print(const char* str) {
    while (*str) {
        if (*str == '\n') {
            vga_position += 80 - (vga_position % 80);
        } else {
            vga_buffer[vga_position * 2] = *str;
            vga_buffer[vga_position * 2 + 1] = VGA_COLOR;
            vga_position++;
        }
        str++;
    }
}


extern "C" void kernel_main(uint32_t memory_map_address) {
    print("TOS KERNEL\n");
    print("Welcome to the simple kernel!\n");

    while (1) {
    }
}
