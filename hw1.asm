include Irvine32.inc

.code
main proc
	
	;esi=ReadInt()
	call ReadInt
	mov esi, eax

	;b = ReadInt()
	call ReadInt
	mov ebx, eax

	;c = ReadInt()
	call ReadInt
	mov ecx, eax

	;d = ReadInt()
	call ReadInt
	mov edx, eax

	;eax = esi
	mov eax, esi

	;output value of eax
	call Crlf
	call WriteInt
	call Crlf

	;eax=ebx & output value of eax(original value of ebx)
	mov eax, ebx
	call WriteInt
	call Crlf

	;eax=ecx & output value of eax(original value of ecx)
	mov eax, ecx
	call WriteInt
	call Crlf

	;eax=edx & output value of eax(original value of edx)
	mov eax, edx
	call WriteInt
	call Crlf

	;eax=esi
	mov eax, esi
	; a=(a-b)
	sub eax, ebx
	; (a-b) = ((a-b)+c)
	add eax, ecx
	; ((a-b)+c)= (((a-b)+c)-d)
	sub eax, edx
	call Crlf
	call WriteInt
	call Crlf

	invoke ExitProcess,0
main endp
end main