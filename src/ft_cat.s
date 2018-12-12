
segment		.bss
buff		resb	20

segment		.text
global		_ft_cat

_ft_cat:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32
	mov		[rsp + 0], rdi		; store fd on stack memory
	mov		[rsp + 8], 10		; store newline on stack memory
	mov		[rsp + 16], 0		; newline flag
read:
	mov		rax, 0x2000003		; read syscall
	mov		rdi, [rsp + 0]		; fd
	mov		rsi, buff
	mov		rdx, 20				; no. of bytes to read
	syscall
	cmp		rax, 0				; cmp bytes read to 0(det. eof)
	jle		newline
write:
	mov		[rsp + 16], 1		; newline must be output
	mov		rdx, rax			; bytes to write = bytes read from fd
	mov		rax, 0x2000004		; write syscall
	mov		rdi, [rsp]
	mov		rsi, buff
	syscall
	jmp		read
newline:
	cmp		[rsp + 16], 0
	je		exit
	mov		rax, 0x2000004
	mov		rdi, [rsp + 0]
	lea		rsi, [rsp + 8]		; store newline ptr
	mov		rdx, 1
	syscall
exit:
	leave
	ret
