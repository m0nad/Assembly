.text
.globl _start

_start:
  xor %eax, %eax
  mov $0x4, %al
  xor %ebx, %ebx
  push %ebx
  inc %ebx
  push $0x6f
  push $0x646e754d
  push $0x206f6c41
  mov %esp, %ecx
  xor %edx, %edx
  mov $0xa, %dl
  int $0x80
  xor %eax, %eax
  xor %ebx, %ebx
  inc %eax
  int $0x80
 
