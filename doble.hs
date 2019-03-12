doble x = x + x

suma [] = 0

suma (x:xs) = x + suma xs

suma2 (total, lista) = 
	if lista == [] 
		then total 
		else suma2 (total + head lista, tail lista)


suma3 = b + c
	where
		b = 1
		c = 2

suma4 = b + c
	where
		{b = 1;
		c = 2}

average ns = suma ns `div` length ns

average2 ns = div(suma ns) (length ns)

divide = a `div` length xs
	where
		a = 10
		xs = [1,2,3,4,5]
