	AREA RESET, CODE
	ENTRY                 ;2X + 7Y +9Z
	MOV R1, #2            ;X=2
	MOV R2, #3            ;Y=3
	MOV R3, #-1           ;Z=1
	RSB R2, R2, R2, LSL #3
	ADD R1, R2, R1, LSL #1
	ADD R3, R3, R3, LSL #3
	ADD R1,R1,R3
STOP B STOP
	END