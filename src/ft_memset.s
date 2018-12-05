# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/05 14:59:41 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/05 15:20:54 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		ft_memset

ft_memset:
	xor		rcx, rcx
while:
	cmp		rcx, rdx
	jge		end
	mov		[rdi + (1 * rcx)], rsi
	inc		rcx
	jmp		while
end:
	mov		rax, rdi
	ret
