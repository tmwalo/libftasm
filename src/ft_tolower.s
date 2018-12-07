# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/07 13:56:04 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/07 14:04:16 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_tolower

_ft_tolower:
	cmp		rdi, 'A'
	jl		islower
	cmp		rdi, 'Z'
	jg		islower
	mov		rdx, rdi
	mov		rbx, 'a'						; calc distance between lower & uppercase letters
	sub		rbx, 'A'
	add		rdx, rbx						; mov forwards through ascii values to find corrsp. lowercase val
	mov		rax, rdx
	ret
islower:
	mov		rax, rdi
	ret
