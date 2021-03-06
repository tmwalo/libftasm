# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putchar.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/12 09:09:08 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/12 09:09:32 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_putchar

_ft_putchar:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16				; allocate stack memory to store _ft_putchar arg
	mov		[rsp], rdi
	mov		rax, 0x2000004		; write syscall
	mov		rdi, 1				; fd
	mov		rsi, rsp			; char pointer
	mov		rdx, 1				; no. of bytes
	syscall
	leave
	ret
