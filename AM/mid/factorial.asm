	area factorial,code,readonly
	export start
start
	ldr r4,=0x40000000		  ;destination location
	mov r0,#0x05			  ;factorial of 5
	mov r1,r0       		  
Rep	 subs r1,r1,#1	       
	 mul r2,r0,r1		 
	 mov r0,r2 
	 cmp r1,#1		 
	 bne Rep
	 str r0,[r4]	    	  ;store result
end1 B end1
	end
