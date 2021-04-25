		section		.text

		global		_ft_strlen

_ft_strlen:
		
		xor			rax, rax ; rax = 0

loop:
		cmp			BYTE [rdi + rax], 0 ; if str[i] == 0
		jz			end
		inc			rax ; rax++
		jmp			loop

end:
		ret
