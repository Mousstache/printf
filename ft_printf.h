/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: motroian <motroian@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/22 18:08:16 by motroian          #+#    #+#             */
/*   Updated: 2022/11/27 20:53:18 by motroian         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <stdlib.h>
# include <unistd.h>
# include <stdarg.h>

int		ft_printf(const char *s, ...);
int		ft_putnbr(int nb);
int		ft_putchar(int c);
int		ft_putstr(char *str);
int		ft_count(int nb);
int		h(unsigned long int nb, char *base);
size_t	ft_strlen(char *str);

#endif
