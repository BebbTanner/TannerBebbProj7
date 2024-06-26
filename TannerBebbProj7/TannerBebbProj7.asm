;Tanner Bebb Project 7 assembly langauge

INCLUDE Irvine32.inc

.data

	prompt1 BYTE "Bitwise Multiplication of Unsigned Integers", 0
	Result BYTE "X * Y = ", 0
	choiceX BYTE "Please enter the value for X: ", 0
	choiceY BYTE "Please enter the value for Y: ", 0

    intX SDWORD ?
    intY SDWORD ?
    intResult SDWORD ?

.code

main PROC

    mov edx, OFFSET prompt1
    call WriteString
    call Crlf

    mov edx, OFFSET choiceX
    call WriteString
    call ReadInt
    mov intX, eax

    mov edx, OFFSET choiceY
    call WriteString
    call ReadInt
    mov intY, eax

    call BitwiseMultiply
    call DisplayResult

main ENDP


BitwiseMultiply PROC

    xor eax, eax           ; Clear eax for accumulation
    mov eax, intX
    mov ebx, intY

    ;xor eax, eax           ; Clear eax for accumulation
    mov ecx, 32            ; Set loop counter to 32 (number of bits in unsigned 32-bit integer)

shift_loop:
    shl ebx, 1             ; Shift the multiplier left
    jnc skip_addition      ; Jump if no carry flag set (i.e., if shifted bit was 0)
    add eax, ecx           ; Add multiplicand to the result if carry flag is set

skip_addition:
    dec ecx                ; Decrement loop counter
    jnz shift_loop         ; Jump if loop counter is not zero

    ret

BitwiseMultiply ENDP


DisplayResult PROC

    mov edx, ebx

    call WriteInt 
    call Crlf

    ret

DisplayResult ENDP

END main