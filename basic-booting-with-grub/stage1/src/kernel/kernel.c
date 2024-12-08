

char *video_memory = (char *)0xB8000;

void clear_screen() {
    int screen_size = 80 * 25;
    for (int i = 0; i < screen_size; i++) {
        video_memory[i * 2] = ' ';
        video_memory[i * 2 + 1] = 0x07;
    }
}


void cmain() {
    clear_screen();
    const char *message = "Hello World From kernel with GRUB!";
    for (int i = 0; message[i] != '\0'; i++) {
        video_memory[i * 2] = message[i];
        video_memory[i * 2 + 1] = 0x07;
    }

    while (1) {
        __asm__("hlt");
    }
}
