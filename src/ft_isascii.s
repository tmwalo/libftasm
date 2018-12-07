# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/07 09:24:23 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/07 09:26:50 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_isascii

_ft_isascii:
	cmp		rdi, 0
	jl		false
	cmp		rdi, 127
	jg		false
	mov		rax, 1
	ret
false:
	mov		rax, 0
	ret
