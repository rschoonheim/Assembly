FROM alpine:latest

# Install nasm
RUN apk add --no-cache nasm

# Install ld
RUN apk add --no-cache binutils

WORKDIR /app

COPY . .

# Compile the
# assembly code
RUN nasm -f elf64 -o main.o main.asm && ld main.o -o main

# Run the
# executable
CMD ["./main"]

