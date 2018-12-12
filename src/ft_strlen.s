# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/12 13:55:12 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/12 14:36:40 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_strlen

_ft_strlen:
	push	rbp
	mov		rbp, rsp
	cld							; clear direction flag
	xor		rax, rax			; scan for null char
	mov		rcx, -1				; two's complement has same bit pattern as max 64-bit value(since actual str len unknown before hand)
	repne	scasb
	mov		rax, -2
	sub		rax, rcx
	leave
	ret
