# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmwalo <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/07 09:22:42 by tmwalo            #+#    #+#              #
#    Updated: 2018/12/07 09:22:45 by tmwalo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment		.text
global		_ft_isalnum
extern		_ft_isalpha
extern		_ft_isdigit

_ft_isalnum:
	call	_ft_isalpha
	cmp		rax, 1
	je		exit
	call	_ft_isdigit
exit:
	ret
