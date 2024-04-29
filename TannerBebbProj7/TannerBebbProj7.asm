;Tanner Bebb Project 7 assembly langauge

INCLUDE Irvine32.inc

.data

	prompt1 BYTE "Bitwise Multiplication of Unsigned Integers", 0
	Result BYTE "X * Y = ", 0
	choiceX BYTE "Please enter the value for X: ", 0
	choiceY BYTE "Please enter the value for Y: ", 0

.code

main PROC

	call userPrompts

main ENDP


userPrompts PROC

	mov edx, OFFSET prompt1
	call WriteString
	call Crlf

	mov edx, OFFSET choiceX
	call WriteString
	call ReadInt

	mov edx, OFFSET choiceY
	call WriteString
	call ReadInt
	call Crlf

	mov edx, OFFSET Result
	call WriteString
	call Crlf

	ret

userPrompts ENDP

END main