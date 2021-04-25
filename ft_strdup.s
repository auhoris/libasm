		section		.text
		extern		_malloc
		extern		_ft_strlen
		extern		_ft_strcpy

		global		_ft_strdup

; RDI RSI RDX RCX R8 R9 - аргументы передаются по порядку в эти регистры

; RDI = s1
; char *strdup(const char *s1);

_ft_strdup:
		push		rdi
		call		_ft_strlen
		inc			rax
		mov			rdi, rax
		call		_malloc
		pop			rdi

		mov			rsi, rdi
		mov			rdi, rax
		call		_ft_strcpy
		ret
