;ADDITION OF 'N' 32 BIT NUMBERS.

	area nadd,code,readonly
;	export start
start
    ldr r0,=0x40000000
    mov r2,#05             ;number of 32 bit no. to be added
    ldr r3,[r0],#04
back ldr r4,[r0],#04
     add r3,r3,r4
     subs r2,r2,#01
     cmp r2,#00
     bne back
stop b  stop
     end

