;Tanner Bebb Project 7 assembly langauge

INCLUDE Irvine32.inc

.data

	prompt1 BYTE "Bitwise Multiplication of Unsigned Integers", 0
	Result BYTE "X * Y = ", 0
	choiceX BYTE "Please enter the value for X: ", 0
	choiceY BYTE "Please enter the value for Y: ", 0

.code

main PROC

	mov edx, OFFSET prompt1
	call WriteString
	call Crlf

	call userPrompts

	;call runAgain

main ENDP


userPrompts PROC

	mov edx, OFFSET choiceX
	call WriteString
	call ReadInt
	movzx ebx, choiceX
	;mov [ebx], al

	mov edx, OFFSET choiceY
	call WriteString
	call ReadInt
	movzx eax, choiceY
	;mov [eax], bl
	call Crlf

	mul ebx

	mov edx, OFFSET Result
	call WriteString
	call Crlf

	ret

userPrompts ENDP


runAgain PROC

runAgain ENDP

END main