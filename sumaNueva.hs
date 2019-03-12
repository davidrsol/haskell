suma [] = 0
suma (l:lx) = l + suma lx

reversaR6 [] = []
reversaR6 (x:xs) = reversaR6 xs ++ [x]

suma2(lista) =
	if lista == [] 
		then 0
		else head lista + suma2 (tail lista)

ultimo l = head(reverse l) 

quitarUltimo l = reverse(tail(reverse l))

reversaR (l,r) = 
	if l == []
		then r
		else reversaR(tail l, [reverse(head l)] ++ r)

reversaR2 l = reverse(map reverse l)

reversaR3 (l,r) = 
	if l == []
		then reverse r
		else reversaR3(tail l, r ++ [reverse(head l)])

reversaR4 (l,r) =
	if l == []
		then r
		else reversaR4(tail l, head l:r)

factorial n = 
	if n < 0
		then -1
		else product[1..n]

factG n	| n < 0 = -1
	| otherwise = product[1..n]



absoluto n 	| n >= 0 = n
		| otherwise = -n


prueba lista 	| head(lista) == 5 && length(lista) == 3 = True
		| otherwise = False


reversaR5 (l,r) | l == [] = r
		| otherwise = reversaR5 (tail l, head l:r)

fact2 n	| n < 0 = -1 
	| n == 0 = 1
	| otherwise = n * fact2(n-1)

fact3 n | n < 0 = -1
	| n == 0 = 1
	| othervise = prod[1..n]

encuentra (n,lista) 	| lista == [] = False 
			| n == head lista = True
			| otherwise = encuentra(n, tail lista)

encuentra2 (n, lista) =
	if lista == [] then False
		else if n == head lista then True
			else encuentra2(n, tail lista)

repetidos lista = 
	if  lista == [] then False
		else if encuentra(head lista, tail lista) then True
			else repetidos (tail lista)


repetidos2 lista 	| lista == [] = False
			| encuentra (head lista, tail lista) = True
			| otherwise = repetidos2 (tail lista)



	

