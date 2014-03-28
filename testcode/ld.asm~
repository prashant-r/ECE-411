ORIGIN 0
SEGMENT CodeSegment: ; Should store data into different locations; then should bring back the correct data from the memory againtestStart:
	NOP
	NOP
	NOP
	LDR R7, R0, failt0
	NOP
	NOP
	NOP
failt0:	DATA2 4xAAAA
	NOP
	NOP
    ADD R1,R0, 10
    ADD R3, R0, 11	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	#STR R7, R0, dest3
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	LDR	R4, R0, dest1
	LDR	R5, R0, dest2
	LDR	R6, R0, dest3
	halt:	BRnzp	halt	NOP
	NOP
	NOP
	NOP
SEGMENT DataSegment :
failt1:	DATA2 4xBAD1
getdat:	DATA2 4x600D
failt2: DATA2 4xBAD2
failt3:	DATA2 4xBADD
dest1:	DATA2 4xBAD1
dest2:	DATA2 4xBAD2
dest3:	DATA2 4xBAD3
dest4:  DATA2 4x000D
