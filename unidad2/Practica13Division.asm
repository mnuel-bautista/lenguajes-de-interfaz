section .data
 Msg1 db "Introduce un dividendo", 10
    Msg1Len equ $-Msg1
msg db 10, 13, "No es posible dividir entre cero", 10, 13
lonmsg equ $-msg
section .bss
Numero resb 1
resultado resb 1
section .text
    global _start

_start:

    mov eax, 4
    mov ebx, 1
    mov ecx, Msg1
    mov edx, Msg1Len
    int 0x80

    mov eax, 3  
    mov ebx, 0
    mov ecx, Numero
    mov edx, 1
    int 0x80

    mov eax,[Numero]
    mov edx, 0
    mov ebx, 2
    sub eax ,48
   
    cmp ebx, 0
    je escero

    div ebx


add eax, 48
mov [resultado], eax

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1
int 0x80

jmp salir

escero:
mov eax, 4
mov ebx, 1
mov ecx, msg
mov edx, lonmsg
int 0x80

salir:
mov eax, 1
mov ebx, 0
int 0x80