SECTION .bss
    RESULTADO resb 1

SECTION .text
    global _start

_start:
    MOV BX, 2
    MOV DX, 0
    MOV AX, 8

    DIV BX 

    ADD AX, 48
    MOV [RESULTADO], AX


    MOV EAX, 4
    MOV EBX, 1
    MOV ECX, RESULTADO 
    MOV EDX, 1
    INT 0x80

    MOV EAX, 1
    MOV EBX, 0
    INT 0x80