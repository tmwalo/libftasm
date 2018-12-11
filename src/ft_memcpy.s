
segment		.text
global		_ft_memcpy

_ft_memcpy:
	push	rbp
	mov		rbp, rsp
	xor		rcx, rcx
while:
	cmp		rcx, rdx
	jge		end
	mov		rax, [rsi + 1 * rcx]
	mov		[rdi + 1 * rcx], rax
	inc		rcx
	jmp		while
end:
	mov		rax, rdi
	leave
	ret

