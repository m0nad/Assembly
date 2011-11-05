.data
.text
  .global _start

_start:
mov $0x1, %eax	#syscall exit
mov $0x0, %ebx	#exit (0);
int $0x80	#chama o kernel
