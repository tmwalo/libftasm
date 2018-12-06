# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/05 14:59:41 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/06 12:24:13 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_memset

_ft_memset:
	mov		rax, rsi
	mov		rcx, rdx
	rep		stosb
	mov		rax, rdi
	ret
