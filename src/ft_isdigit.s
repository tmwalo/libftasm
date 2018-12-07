# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/07 09:22:26 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/07 09:22:30 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_isdigit

_ft_isdigit:
	cmp		rdi, '0'
	jl		false
	cmp		rdi, '9'
	jg		false
	mov		rax, 1
	ret
false:
	mov		rax, 0
	ret
