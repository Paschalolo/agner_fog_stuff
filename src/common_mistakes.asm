

SECTION .text 
global func 

func : 
	push rbx
	test ecx , ecx 
	jz finished 
	...
	pop rbx ; Error here becase if the branch is take rbx does not get its vale back this violates the linux OS ABI for non volatile function  
finshed : 
	ret 

