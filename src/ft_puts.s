# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/08 14:58:21 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/20 13:16:24 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.data
	nullstr		db	"(null)", 0	; output if str ptr = null

segment		.text
global		_ft_puts

_ft_puts:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16				; allocate stack memory for newline char
	mov		byte [rsp], 10		; store newline on stack
	mov		rbx, rdi			; store str ptr in callee-saved register
nullcheck:
	cmp		rdi, 0				; if address/ptr = 0, then arg is null
	je		putnullstr
outputstr:
	mov		rax, 0x2000004
	mov		rdi, 1				; fd
	mov		rsi, rbx			; str ptr
	mov		rdx, 1				; no. of bytes
	cmp		byte [rbx], 0
	je		newline
	syscall
	inc		rbx
	jmp		outputstr
putnullstr:
	mov		rax, 0x2000004
	mov		rdi, 1				; fd
	mov		rsi, nullstr		; nullstr ptr
	mov		rdx, 6				; nullstr len
	syscall
newline:
	mov		rax, 0x2000004
	mov		rdi, 1				; fd
	mov		rsi, rsp
	mov		rdx, 1				; no. of bytes
	syscall
	mov		rax, 10				; ret non-negative val upon success
	leave
	ret
