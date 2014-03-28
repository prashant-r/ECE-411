


ldi r7, r0, MyPointer

sti r7, r0, MySPointer

MyPointer: DATA2 MyData ;4
MyData: DATA2 4x600D ;6
MySpointer: DATA2 MySData ;8
MySData: DATA2 ? ;10