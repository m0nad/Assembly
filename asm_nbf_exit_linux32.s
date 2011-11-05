.data
.text
  .global _start
_start:
xor %eax, %eax
xor %ebx, %ebx
inc %eax
int $0x80
