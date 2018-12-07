# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/07 09:31:21 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/07 10:01:03 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_toupper

_ft_toupper:
	cmp		rdi, 'a'
	jl		isupper
	cmp		rdi, 'z'
	jg		isupper
	mov		rdx, rdi
	mov		rbx, 'a'						; calc distance between lower & uppercase letters
	sub		rbx, 'A'
	sub		rdx, rbx						; mov backwards through ascii values to find corrsp. uppercase val
	mov		rax, rdx
	ret
isupper:
	mov		rax, rdi
	ret
