const char sc[] =
"\x31\xc0"		// xor    %eax,%eax
"\xb0\x04"		// mov    $0x4,%al
"\x31\xdb"		// xor    %ebx,%ebx
"\x53"			// push   %ebx
"\x43"			// inc    %ebx
"\x6a\x6f"		// push   $0x6f
"\x68\x4d\x75\x6e\x64"	// push   $0x646e754d
"\x68\x41\x6c\x6f\x20"	// push   $0x206f6c41
"\x89\xe1"		// mov    %esp,%ecx
"\x31\xd2"		// xor    %edx,%edx
"\xb2\x0a"		// mov    $0xa,%dl
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

