SECTION .bss
    RESULTADO resb 1

SECTION .text
    GLOBAL _start

_start:

    MOV AX, 3, 
    MOV CX, 2

    MUL CX 

    ADD AX, 48
    MOV [RESULTADO], AX
    
    MOV EAX, 4
    MOV EBX, 1
    MOV ECX, RESULTADO
    MOV EDX, 2
    INT 0x80

    MOV EAX, 1
    MOV EBX, 0
    INT 0x80