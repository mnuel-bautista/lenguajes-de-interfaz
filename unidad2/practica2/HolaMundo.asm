section .data ; Se define la sección de datos 
    mensaje db 'Hola mundo!',0
section .text ; Sección para definir las instrucciones en ensamblador. 
global _start
_start:
  ; Imprime el mensaje en la consola
  mov eax, 4 ; Sistema de llamada para imprimir en la consola
  mov ebx, 1 ; File descriptor de stdout
  mov ecx, mensaje ; Dirección del mensaje a imprimir 
  mov edx, 13 ; Longitud del mensaje
  int 0x80 ; Llamada al sistema para imprimir en la consola

  ; Salida del programa
  mov eax, 1 ; Sistema de llamada para salir
  xor ebx, ebx ; Codigo de salida 0
  int 0x80 ; Llamada al sistema para salir
