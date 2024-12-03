<body>
    <h1>Basic Core</h1>
    <p><strong>Basic Core</strong> is an educational project designed to explore the fundamental principles of creating a bootloader and an operating system kernel. The project is divided into two stages: a simple assembler bootloader and a bootloader that transitions into 32-bit mode and calls a C++ function.</p>
    <h2>Project Structure</h2>
    <p>The repository contains two main folders:</p>
    <h3>1. <code>basic-bootloader</code></h3>
    <p>This stage features a simple assembly bootloader that displays "Hello, World!" on the screen. It serves as an introduction to bootloader development and understanding low-level system interactions.</p>
    <h3>2. <code>basic-kernel</code></h3>
    <p>In this stage, the bootloader transitions the system to 32-bit protected mode and calls a C++ function within the kernel. The kernel then outputs text to the console. This stage introduces concepts of kernel development and the interaction between assembly and C++.</p>
    <h2>Features</h2>
    <ul>
        <li><strong>Stage 1:</strong> Basic bootloader with a simple message.</li>
        <li><strong>Stage 2:</strong> A more advanced bootloader that initializes 32-bit mode and integrates with a C++ kernel.</li>
    </ul>
    <h2>How to Build and Run</h2>
    <ol>
        <li>Clone the repository:
            <pre><code>https://github.com/xXxCLOTIxXx/Simple-kernel.git</code>
    </pre>
        </li>
        <li>Navigate to the desired stage folder.</li>
        <li>Run the build script provided in the folder.</li>
    </ol>
    <h2>Requirements</h2>
    <ul>
        <li>Assembly and C++ compilers (e.g., <code>nasm</code>, <code>gcc</code>, or <code>clang</code>).</li>
        <li>An x86 emulator (e.g., QEMU or VirtualBox) for testing.</li>
    </ul>
    <h2>Contributing</h2>
    <p>Contributions are welcome! If you have improvements or find issues, feel free to open a pull request or issue.</p>
    <h2>License</h2>
    <p>This project is licensed under the MIT License. See the <code>LICENSE</code> file for details.</p>
</body>
