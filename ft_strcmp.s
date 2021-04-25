		section		.text

		global		_ft_strcmp

; RDI RSI RDX RCX R8 R9 - аргументы передаются по порядку в эти регистры

; rdi = s1
; rsi = s2
; int	strcmp(const char *s1, const char *s2);

_ft_strcmp:
		xor			rcx, rcx ; i = 0

loop:
		mov			al, BYTE [rdi + rcx]
		mov			bl, BYTE [rsi + rcx]
		cmp			al, 0
		je			end
		cmp			al, 0
		je			end
		cmp			al, bl
		jne			end
		inc			rcx
		jmp			loop

end:
		sub			rax, rbx
		ret
