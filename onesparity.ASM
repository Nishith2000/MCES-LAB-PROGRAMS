	AREA RESET, CODE
	ENTRY
	LDR R0, =IN
	LDR R1, [R0]                ; STORES THE NO.
	MOV R2, R1                  ; STORES COPY OF THE NO.
	MOV R3, #0                  ; STORES NO. OF ONES
	MOV R7, #0                  ; STORES NO. OF ZEROS
	MOV R4, #0                  ; STORES PARITY OF NO.( EVEN - 0 , ODD - 1)  
LOOP
	LSRS R2, #1
	ADDCS R3,R3,#1
	BNE LOOP
	RSB R7,R3,32
	LDR R5, =OUT1
	LDR R6, =OUT2
	STR R3, [R5]
	LSRS R1, #1
	MOVCS R4, #1                ; ODD PARITY 
	STR R4, [R6]
STOP B STOP

IN  DCD &FFFFFFFF
	AREA MEMORY ,DATA
OUT1 DCD &0
OUT2 DCD &0
	END