# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/07 09:22:58 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/08 15:54:41 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_isprint

_ft_isprint:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, ' '
	jl		false
	cmp		rdi, '~'
	jg		false
	mov		rax, 1
	leave
	ret
false:
	mov		rax, 0
	leave
	ret
