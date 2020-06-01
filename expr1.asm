	AREA RESET, CODE
	ENTRY
	MOV R0,#1            ;B
	MOV R1,#3            ;C
	MOV R3,#5            ;D
	ADD R1,R1,R0
	SUB R4,R1,R3         ;A
STOP B STOP
	END