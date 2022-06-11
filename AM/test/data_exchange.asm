;DATA EXCHANGE
   area data_exch,code,readonly
;   export start
start
      ldr r0,=0x40000000
      ldr r1,=0x40000044
      mov r4,#09
loop  ldr r2,[r0]
      mov r5,r2
      ldr r6,[r1]
      str r6,[r0],#04
      str r5,[r1],#04
      subs r4,#01
      cmp r4,#00
      bne loop
stop  b stop
      end