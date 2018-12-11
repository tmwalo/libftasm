# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/08 14:58:21 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/08 14:59:12 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		ft_puts

ft_puts:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 48								; allocate stack memory
	mov		qword [rsp + 0], 0x2000004			; write syscall
	mov		qword [rsp + 8], 1					; fd
	mov		[rsp + 16],	rdi						; buff pointer
	mov		qword [rsp + 24], 1					; no. of bytes
	mov		qword [rsp + 32], 0					; index
while:
	mov		rax, [rsp + 0]						; load stack memory values into registers
	mov		rdi, [rsp + 8]
	mov		rcx, [rsp + 32]
	lea		rsi, [rsp + 16 + rcx]
	mov		rdx, [rsp + 24]
	cmp		qword [rsi], 0
	je		end
	syscall
	inc		qword [rsp + 32]					; increment index in stack memory
	jmp		while
end:
	leave
	ret
