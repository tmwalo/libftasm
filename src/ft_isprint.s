

segment		.text
global		_ft_isprint

_ft_isprint:
	cmp		rdi, ' '
	jl		false
	cmp		rdi, '~'
	jg		false
	mov		rax, 1
	ret
false:
	mov		rax, 0
	ret
