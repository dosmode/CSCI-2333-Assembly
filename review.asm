include Irvine32.inc

.code
main proc

call ReadInt
mov esi, eax
call ReadInt
mov ebx, eax
call ReadInt
mov ecx, eax
call ReadInt
mov edx, eax

mov eax, esi
call WriteInt
call Crlf
mov eax, ebx
call WriteInt
call Crlf
mov eax, ecx
call WriteInt
call Crlf
mov eax, edx
call WriteInt
call Crlf

;(((a-b)+c)-d)

sub eax, ebx
add eax, ecx
sub eax, ebx

call WriteInt
call crlf
invoke ExitProcess,0
main endp
end main