;	AREA XYZ,CODE,READONLY
;	EXPORT start
start
	mov r5,#0x40000000          ;load the address where number is present
	ldr r0,[r5]             ;load the value into r0
	mov r1,r0        ;make a copy
	cmp r0,#2        ; check whether the n value is 0,1
	mov r2,#1         ;if n=0,1 then make factorial value 1
	blt result        ;if value is less than 2 then store factorial value as 1 else

Repeat	 subs r1,r1,#1	   ;subtractnumber by 1
	 cmp r1,#1		   ; compare the counter is 1
	 beq END1    ;if equal then stops else multiply
	 mul r2,r0,r1		 ;multiply to get factorial
	 mov r0,r2 ;move the result in r0 and iterate r0 value
	 b Repeat
result mov r0,r2     ;store result r0 has the final value
END1 B END1
	END




