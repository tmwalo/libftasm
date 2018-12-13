# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/13 08:50:32 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/13 09:24:30 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.bss
buff		resb	20

segment		.text
global		_ft_cat

_ft_cat:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32
	mov		[rsp + 0], rdi			; store fd on stack memory
	mov		byte [rsp + 8], 10		; store newline on stack memory
	mov		byte [rsp + 16], 0		; newline flag
read:
	mov		rax, 0x2000003			; read syscall
	mov		rdi, [rsp + 0]			; fd
	mov		rsi, buff
	mov		rdx, 20					; no. of bytes to read
	syscall
	cmp		rax, 0					; cmp bytes read to 0(det. eof)
	jle		newline
write:
	mov		byte [rsp + 16], 1		; newline must be output
	mov		rdx, rax				; bytes to write = bytes read from fd
	mov		rax, 0x2000004			; write syscall
	mov		rdi, 1					; std output fd
	mov		rsi, buff
	syscall
	jmp		read
newline:
	cmp		byte [rsp + 16], 0
	je		exit
	mov		rax, 0x2000004
	mov		rdi, 1
	lea		rsi, [rel rsp + 8]		; store newline ptr
	mov		rdx, 1
	syscall
exit:
	leave
	ret
