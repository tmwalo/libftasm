# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/05 14:49:17 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/08 14:40:45 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_bzero
extern		_ft_memset

_ft_bzero:
	push	rbp
	mov		rbp, rsp
	mov		rdx, rsi			; place size = 2nd arg of ft_bzero as 3rd arg of ft_memset
	xor		rsi, rsi			; 2nd arg of ft_memset = 0
	call	_ft_memset
	leave
	ret
