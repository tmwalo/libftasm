# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/06 13:47:42 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/08 15:16:44 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_strcat

_ft_strcat:
	push	rbp
	mov		rbp, rsp
	mov		rax, rdi									; set ret val
	xor		r8, r8										; set src index to 0
	xor		rcx, rcx									; set dest index to 0
while:													; skip to end of dest str
	cmp		byte [rdi + 1 * rcx], 0
	je		cat
	inc		rcx
	jmp		while
cat:													; append src to dest str
	cmp		byte [rsi + 1 * r8], 0
	je		endcat
	mov		rdx, [rsi + 1 * r8]
	mov		[rdi + 1 * rcx], rdx
	inc		rcx
	inc		r8
	jmp		cat
endcat:													; set terminating null char
	xor		rdx, rdx
	mov		[rdi + 1 * rcx], rdx
	leave
	ret
