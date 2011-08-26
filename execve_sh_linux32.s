.data
 str: .string "/bin/sh"
.text
 .global _start

_start:
xor %eax, %eax
mov $0xB, %al
movl $str, %ebx
xor %ecx, %ecx
xor %edx, %edx
int $0x80
