

segment		.text
global		_ft_strlen

_ft_strlen:
	push	rbp
	mov		rbp, rsp
	xor		rcx, rcx
while:
	cmp		byte [rdi + 1 * rcx], 0
	je		end
	inc		rcx
	jmp		while
end:
	mov		rax, rcx
	leave
	ret
