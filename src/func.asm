
SECTION .text 
	global Func 
Func : 
	; Func(int* a , int* r )
	xor ecx, ecx 
	mov eax , 100 
	mov esi , dword[rsi]
.loop :
	cmp , ecx , eax
	jge .end 
	mov edx , ecx 
	sar edx , 1 
	add edx , esi 
	mov dword[rdi + (rcx *  4)] , edx 
	add ecx , 1 
.end : 	
	ret  
