# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/05 14:59:41 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/08 13:45:54 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_memset

_ft_memset:
	push	rbp
	mov		rbp, rsp
	mov		rax, rsi
	mov		rcx, rdx
	rep		stosb
	mov		rax, rdi
	leave
	ret
