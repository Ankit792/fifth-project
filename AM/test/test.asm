	area abc1,code,readonly
	export start
start
	LDR R0,=data1
	LDR R1,=data2
	LDR R3,[R0]
	mov r2,r3
	
m2  mul r5,r2,r3
m3  mul	r8,r5,r3

STORE	add R6,R5,R2
		add r7,r6,#0x01
		add r9,r7,r8
		str r9,[r1]

END1 B END1

data1 DCD 0X03
	area abc,data,readwrite
data2 DCD 0X00
	END