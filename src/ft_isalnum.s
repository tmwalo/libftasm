# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/07 09:22:42 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/08 15:44:45 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_isalnum
extern		_ft_isalpha
extern		_ft_isdigit

_ft_isalnum:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16							; allocate stack memory for rdi
	push	rdi								; store original rdi val on stack incase ft_isalpha changes it
	call	_ft_isalpha
	mov		rdi, rsp						; restore original rdi val from stack memory incase it was changed by ft_isalpha
	cmp		rax, 1							; cmp ft_isalpha ret val
	je		exit
	call	_ft_isdigit
exit:
	leave									; deallocate stack memory and restore rbp val to its original
	ret
