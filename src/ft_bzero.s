# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/05 14:49:17 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/05 15:27:53 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		start
extern		ft_memset

start:
	mov		rdx, rsi			; place size = 2nd arg of ft_bzero as 3rd arg of ft_memset
	xor		rsi, rsi			; 2nd arg of ft_memset = 0
	call	ft_memset
	ret
