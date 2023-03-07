#!/usr/bin/zsh

# Compile the assembly file
nasm -f elf64 -o main.o main.asm

# Link the object file
ld -o main main.o

# Remove the main.o
rm main.o

# Run the executable
./main