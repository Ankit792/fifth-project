	area xyz,code,readonly;
	export start
start
 	LDR R0,=data1 
 	MOV R3,#0x01
BACK LDR R1,=data2
 	LDRB R2,[R0],#1
 	CMP R2,#0x00
 	BEQ END1
 	CMP R2,#0x20
 	BEQ BACK
 	SUB R4,R2,#0x61
 	MUL R5,R3,R4
 	ADD R1,R1,R5
 	LDRB R6,[R1]
 	ADD R6,R6,#0x01
 	STRB R6,[R1],#1
 	B BACK
END1 B END1
data1 DCB 0x73,0x00
	area abc,data,readwrite;
data2 DCB 0X00
	END