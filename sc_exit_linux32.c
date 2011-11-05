const char sc[] = 
"\xb8\x01\x00\x00\x00" // mov    $0x1,%eax
"\xbb\x00\x00\x00\x00" // mov    $0x0,%ebx
"\xcd\x80"	       // int    $0x80
;
int
main ()
{
  __asm__ ("jmp sc");
  return 0;
}
