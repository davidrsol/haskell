quick [] = []
quick (x:xs) = quick p ++ [x] ++ quick g
	where
		p = [ a | a <- xs, a <= x ]
		g = [ a | a <- xs, a > x]


sumados = a + b
	where 
		a = 1
		b = 2

doble x = x + x

prom lista = sum lista `div` length lista

