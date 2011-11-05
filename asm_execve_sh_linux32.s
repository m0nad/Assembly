.data
 str: .string "/bin/sh"
.text
 .global _start

_start:
movl $0xB, %eax
movl $str, %ebx
movl $0x00, %ecx
movl $0x00, %edx
int $0x80
