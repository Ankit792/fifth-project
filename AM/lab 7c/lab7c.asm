	area abc,code,readonly
	export start
start
	LDR R0,=data1
	LDR R1,=data2
	MOV R3,#0x00
BACK LDRB R2,[R0],#1
	CMP R2,#0x00
	BEQ END1
	CMP R2,#0x20
	BEQ SKIP
	CMP R2,#0x5A
	BLS UP
	SUB R2,#0x20
	B SKIP
UP ADD R2,#0x20
SKIP STRB R2,[R1],#1
	B BACK 
END1 B END1
data1 DCB 0x53,0x69,0x4E,0x67,0x48,0X20,0x41,0x4E,0x6B,0x49,0x74,0x6B,0x55,0x6D,0x41,0x52,0x20,0x6D,0x55,0x4B,0x45,0x53,0x68,0x00
	area xyz,data,readwrite
data2 DCB 0x00
	END