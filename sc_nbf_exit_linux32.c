const char sc[] = 
"\x31\xc0"  // xor    %eax,%eax
"\x31\xdb"  // xor    %ebx,%ebx
"\x40"      // inc    %eax
"\xcd\x80"  // int    $0x80
;
int
main ()
{
  __asm__ ("jmp sc");
  return 0;
}
