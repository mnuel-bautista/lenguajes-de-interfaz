SECTION .data 
    msg1 db "Introduce un número", 10
    msg1l equ $-msg1
    msg2 db "El número que ingresaste es: "
    msg2l equ $-msg2
    msg3 db 10

    Numero db " "

SECTION .bss

SECTION .text

GLOBAL _start

_start:
    MOV EAX, 4
    MOV EBX, 1
    MOV ECX, msg1
    MOV EDX, msg1l
    INT 0x80


    MOV EAX, 3
    MOV EBX, 1
    MOV ECX, Numero
    MOV EDX, 2
    INT 0x80

    MOV EAX, 4
    MOV EBX, 1
    MOV ECX, msg2
    MOV EDX, msg2l
    INT 0x80

    MOV EAX, 4
    MOV EBX, 1
    MOV ECX, Numero
    MOV EDX, 2
    INT 0x80


    MOV EAX, 4
    MOV EBX, 1
    MOV ECX, msg3
    MOV EDX, 1
    INT 0x80

    MOV EAX, 1
    MOV EBX, 0
    INT 0x80
