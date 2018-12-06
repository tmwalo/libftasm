# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/06 13:47:42 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/06 16:22:35 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_strcat

_ft_strcat:
	mov		rax, rdi
	xor		rbx, rbx
	xor		rcx, rcx
while:
	cmp		byte [rdi + 1 * rcx], 0
	je		cat
	inc		rcx
	jmp		while
cat:
	cmp		byte [rsi + 1 * rbx], 0
	je		endcat
	mov		rdx, [rsi + 1 * rbx]
	mov		[rdi + 1 * rcx], rdx
	inc		rcx
	inc		rbx
	jmp		cat
endcat:
	xor		rdx, rdx
	mov		[rdi + 1 * rcx], rdx
	ret
