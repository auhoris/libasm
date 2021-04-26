		section	.text
		extern	___error
		global	_ft_write

		
_ft_write:
		mov		rax, 0x2000004
		syscall
		jc ret_error
		ret

ret_error:
		push	r12
		mov		r12, rax
		call	___error
		mov		[rax], r12
		pop		r12
		mov		rax, -1
		ret
