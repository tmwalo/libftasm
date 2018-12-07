# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/07 09:22:58 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/07 09:23:02 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_isprint

_ft_isprint:
	cmp		rdi, ' '
	jl		false
	cmp		rdi, '~'
	jg		false
	mov		rax, 1
	ret
false:
	mov		rax, 0
	ret
