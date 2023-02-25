section .data
    resultado db '0',10,13

section .text
    global _start
_start:

; SUMA -----------------
mov eax, 2
mov ebx, 3
add eax, ebx
add eax, 48
mov [resultado], eax

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1
int 0x80

; FINAL DEL PROGRAMA -----------
mov eax, 1
mov ebx, 0
int 0x80