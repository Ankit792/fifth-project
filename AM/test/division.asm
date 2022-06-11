;DIVISION OF TWO NUMBERS BY SUCCESSIVE SUBTRACTION 
  area division,code,readonly
;  export start
start
     mov r0,#25
     mov r1,#04
     cmp r0,r1
     movge r3,r0
     movls r3,r1
     movcs r4,r1
     movcc r4,r0

loop subs r3,r3,r4
     add r2,r2,#01      ;divisible
     cmp r3,r4
     bge loop
     mov r5,r3          ;r3 holds quotient
stop b stop

     end





