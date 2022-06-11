;FINDING FACTORIAL OF NUMBER WITHOUT LOOKUP TABLE

    area fact_wout_lt,code,readonly
;	export start
start
      mov r0,#3
      mov r1,#01
back  mul r2,r0,r1
      mov r1,r2
      subs r0,r0,#01
      cmp r0,#00
      bne back
stop  b  stop

      end
