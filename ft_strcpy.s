		section		.text

		global		_ft_strcpy

; RDI RSI RDX RCX R8 R9 - аргументы передаются по порядку в эти регистры

; rdi = dst
; rsi = src
; char	*ft_strcpy(char *dst, const char *src);

error:
		xor			rax, rax ; rax = 0 - so null is return
		ret

_ft_strcpy:
		xor			rcx, rcx ; rcx = 0

		cmp			rdi, 0 ; checking if null ptr is sent
		jz			error
		cmp			rsi, 0 ; checking if null ptr is sent
		jz			error

loop:
		mov			dl, BYTE [rsi + rcx] ; store 1 symb in 8-bit register
		mov			BYTE [rdi + rcx], dl ; put from dl to dst
		cmp			dl, 0
		jz			return
		inc			rcx ; i++
		jmp			loop
		

return:
		mov			rax, rdi
		ret
