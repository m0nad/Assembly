#Exemplo de "alo mundo", assembly linux 32bits 
#por 
#m0nad /at/ email.com
.data
  str: .string "Alo Mundo\n"
.text
.globl _start
_start:
  mov $0x4, %eax  #numero da syscall write 
  mov $0x1, %ebx  #stdout em ebx
  mov $str, %ecx  #end da str para ecx
  mov $0xa, %edx  #tamanho da string em edx
  int $0x80       #chama o kernel
  mov $0x1, %eax  #syscall exit
  xor %ebx, %ebx  #zera ebx, exit(0);
  int $0x80       #chama o kernel
