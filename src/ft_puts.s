# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/08 14:58:21 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/12 13:42:45 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_puts

_ft_puts:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16				; allocate stack memory for newline char
	mov		byte [rsp], 10		; store newline on stack
	mov		rbx, rdi			; store str ptr in callee-saved register
while:
	mov		rax, 0x2000004
	mov		rdi, 1				; fd
	mov		rsi, rbx			; str ptr
	mov		rdx, 1				; no. of bytes
	cmp		byte [rbx], 0
	je		newline
	syscall
	inc		rbx
	jmp		while
newline:
	mov		rax, 0x2000004
	mov		rdi, 1				; fd
	mov		rsi, rsp
	mov		rdx, 1				; no. of bytes
	syscall
	leave
	ret
