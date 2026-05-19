; The following code will be placed in the executable
; code section.
.text
.global __reset
__reset:
LOOP: 
    mov     0x1020, w1  ;INW0=ffff 
    mov     0x1022, w2  ;INW1=0001 
    
    add     w2,w2,w7    ;0002, Z=0 
    bra z,   SKIP       ;try to skip, will fail
    add     w1,w2,w3    ;0000, Z=1 
    bra z,   SKIP       ;try to skip, will succeed
    ior     w1,w2,w3    ;FFFF  Z=0  this instruction is skipped
    mov     w7, 0x1026  ;w7's content WON'T be saved at that address
    
SKIP:
    
    mov     w3, 0x1024 ;the saved content will be 0000 instead of FFFF as it was given by the ior
    
   
    bra     LOOP 
.end

