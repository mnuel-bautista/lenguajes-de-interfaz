SECTION .data 
    ln db 10,13,10,13
    lonln equ 4
    mensaje db "El resultado es: "


SECTION .bss
    RESULTADO resb 1

SECTION .text
    global _start

_start: 
    MOV BL, 128
    ROL BL, 1

    ADD EBX, 48
    MOV [RESULTADO], EBX

    MOV EAX, 4
    MOV EBX, 1
    MOV ECX, mensaje
    MOV EDX, 17
    INT 0x80

    MOV EAX, 4
    MOV EBX, 1
    MOV ECX, RESULTADO
    MOV EDX, 1
    INT 0x80

    MOV EAX, 4
    MOV EBX, 1
    MOV ECX, ln
    MOV EDX, lonln
    INT 0x80

    MOV EAX, 1
    MOV EBX, 0
    INT 0x80