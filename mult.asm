INCLUDELIB ucrt.lib
INCLUDELIB legacy_stdio_definitions.lib

EXTERN printf: proc

EXTERN scanf: proc



.DATA
mult1 DWORD 0
mult2 DWORD 0
ANSWER DWORD 0
I1 DB "Please enter first number: ", 0
I2 DB 10, "Please enter second number: ", 0
Output DB 10, "Answer is %d", 10, 0
Rerun DB "Would you like to multiply another number? If so please enter the first number, otherwise enter 0:", 0
getInteger DB "%d", 0

getDB DB 0




.CODE
main PROC



mov eax, 0


call multproc


lea rcx, I1
call printString


sub rsp, 20h
lea rcx, getInteger
lea rdx, mult1
call scanf
add rsp, 20h



rerunjmp:


lea rcx, I2
call printString

sub rsp, 20h
lea rcx, getInteger
lea rdx, mult2
call scanf
add rsp, 20h

call multproc



lea rcx, Output
mov edx, ANSWER
mov rax, 0
call printString

returnfromoverflow:

lea rcx, Rerun
mov rax, 0
call printString

mov mult1, 0


sub rsp, 20h
lea rcx, getInteger
lea rdx, mult1
call scanf
add rsp, 20h

cmp mult1, 0

jne rerunjmp

je endjmp

endjmp:

ret



main ENDP



multproc PROC
	mov ecx, mult2
	mov edx, 0
	notZero:
	add edx, mult1
	cmp ecx, 0
	jl negative
	jg positive
	jz zero
	jnz notZero

zero: 
	mov ANSWER, edx
	mov edx, 0
	ret

positive:
	sub ecx, 1
	jz zero
	jnz notZero
	ret

negative:
	add ecx, 1
	jz zero
	jnz notZero
	ret


multproc ENDP



printString PROC
	sub rsp, 20h

	call printf

	add rsp, 20h
	ret
printString ENDP

END


