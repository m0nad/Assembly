#Escreve you win na tela, x86 linux
#por
#m0nad /at/ email.com
.text
.globl _start

_start:
  xor %eax, %eax
  mov $0x4, %al
  xor %ebx, %ebx
  push %ebx
  inc %ebx
  push $0x0A
  push $0x216E6977
  push $0x20756F79
  mov %esp, %ecx
  xor %edx, %edx
  mov $0x9, %dl
  int $0x80
  xor %eax, %eax
  xor %ebx, %ebx
  inc %eax
  int $0x80
 
