

segment		.text
global		_ft_isalpha

_ft_isalpha:
uppercase:
	cmp		rdi, 'A'
	jl		lowercase
	cmp		rdi, 'Z'
	jle		isalpha
lowercase:
	cmp		rdi, 'a'
	jl		notalpha
	cmp		rdi, 'z'
	jg		notalpha
isalpha:
	mov		rax, 1
	ret
notalpha:
	mov		rax, 0
	ret
