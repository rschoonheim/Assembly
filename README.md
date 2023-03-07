# Assembly


## Sections van een Assembly programma
Een Assembly programma bestaat uit drie verschillende secties. 

Elke sectie heeft een eigen rol. De secties zijn:

### .data
De data sectie wordt gebruikt voor het declareren van geïnitialiseerde data of constanten. 

Deze data verandert niet tijdens de uitvoering van het programma. 

**Voorbeeld van een data sectie**
```nasm
section .data
    variable db "Hello World!", 10
    variable2 db 0x41
    variable3 db 0x42
```

### .text
De text sectie wordt gebruikt voor het declareren van instructies.

**Voorbeeld van een text sectie**
```nasm
section .text
    global _start
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, variable
    mov edx, 13
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80
```

### .bss
De bss sectie wordt gebruikt voor de declaratie van variabelen.


