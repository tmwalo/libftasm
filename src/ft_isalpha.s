# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/07 09:22:10 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/08 15:51:33 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_isalpha

_ft_isalpha:
uppercase:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 'A'
	jl		lowercase
	cmp		rdi, 'Z'
	jle		isalpha
lowercase:
	cmp		rdi, 'a'
	jl		notalpha
	cmp		rdi, 'z'
	jg		notalpha
isalpha:
	mov		rax, 1
	leave
	ret
notalpha:
	mov		rax, 0
	leave
	ret
