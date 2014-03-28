
; Created by Tony Aikara (aikara2)  ECE 411 Spring 14'

; This program calculates 5!. It can calculate
;   different numbers (6!, 7!, 8!) by changing the value of the first memory
;   location at the bottom of the code. The program does not account for zero or negative numbers as input.

; This program primarily uses registers in the following manner:
; R0 contains 0 
; R1 contains input value and counter for ouetr loop
; R2 contains 1 and final value
; R3 contains -1
; R4 counter for inner loop
;R5 temp register


SEGMENT Codesegment:

              LDR  R1, R0, INPUT	; R1 <= 5
              LDR  R2, R0, ONE		; R2 <= 1
              LDR  R3, R0, value      	; R3 <= -1


OUTERLOOP:    ADD  R4, R0, R1		

LOOP:         ADD R5, R5, R2          
	      ADD R4, R4, R3
              BRp LOOP			;jumping to the inner loop

	      ADD R2, R0, R5		;value storing into R2
              LDR R5, R0, CLEAR		;clearing the R5 for next iteration 
              ADD R1, R1, R3
              BRp OUTERLOOP		;jumping to the outer loop
	      JSR SUB
	      
	      ADD R4, R4, 8
HALT:					; Infinite loop to keep the processor
              BRnzp HALT		; from trying to execute the data below.



SUB:
	      AND R1, R1, 0
	      ADD R1, R1, 15
	      RET

INPUT: 	DATA2 4x0005	; change this value to other factorials 	
ONE:	DATA2 4x0001
CLEAR:  DATA2 4x0000
VALUE:  DATA2 4xFFFF
