
segment		.text
global		_ft_puts_alt
extern		_ft_putchar

_ft_puts_alt:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16
	mov		[rsp + 0], rdi		; str pointer
	mov		qword [rsp + 8], 0	; index
while:
	mov		rdx, [rsp + 0]		; load str pt from stack memory
	mov		rcx, [rsp + 8]		; load index from stack memory
	mov		rdi, [rdx + 1 * rcx]
	cmp		rdi, 0
	je		end
	call	_ft_putchar
	inc		qword [rsp + 8]
	jmp		while
end:
	leave
	ret
