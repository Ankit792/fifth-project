	area xyz,code,readonly;
	export start;
start
 	LDR R0,=data1  
	LDR R1,=data2   
	MOV R4,#0X01   
go
	LDR R2,[R0],#4
	MOV R3,R2
	MOV R12,#4      
up 
	AND R8,R3,#0X000000ff
	LSR R3,#8
	AND R5,R8,#0X0000000f
	LSL R5,#4
	AND R6,R8,#0X000000f0
	LSR R6,#4
	ADD R7,R5,R6
	STRB R7,[R1,#1]!
	SUB R12,R12,#1
	CMP R12,#0
	BNE up
	SUBS R4,R4,#0X01
	BNE go;

data1 DCD 0X45869728,0x00

   area xyz1,data,readwrite
data2 DCD 0X00
   END