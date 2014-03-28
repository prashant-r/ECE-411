

ldb r6, r0, LowByte ;0
ldb r7, r0, HighByte ;2
stb r6, r0, LowSByte ;4
stb r7, r0, HighSByte ;6

LowByte: DATA1 4x0D ;8
HighByte: DATA1 4x60 ;9
LowSByte: DATA1 ? ;10
HighSByte: DATA1 ? ;11