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
	NOP
	NOP
	STR R7, R0, getdat
	NOP
	NOP
	NOP
	NOP
	NOP
	LDR R3, R0, getdat
	NOP
	NOP
	halt:	BRnzp	halt	NOP
	NOP
	NOP
	NOP
SEGMENT DataSegment :
failt1:	DATA2 4xBAD1
getdat:	DATA2 4xDDDD
failt2: DATA2 4xBAD2
failt3:	DATA2 4xBADD
dest1:	DATA2 4xBAD1
dest2:	DATA2 4xBAD2
dest3:	DATA2 4xBAD3
dest4:  DATA2 4x000D
