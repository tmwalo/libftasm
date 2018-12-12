# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/12 14:45:45 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/12 14:54:30 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_memcpy

_ft_memcpy:
	push	rbp
	mov		rbp, rsp
	mov		rax, rdi			; ptr to dest = ret val
	mov		rcx, rdx
	rep		movsb
	leave
	ret

