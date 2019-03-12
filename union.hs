
union (c1, c2) = if conjunto c1 && conjunto c2
			then hacer_union(c1,c2,c1)
			else []

conjunto c = if estaRepetido c
		then True
		else False


hacer_union(c1, c2, cunion) =
	if c2 == []
		then cunion
		else if esta2 (head c2, c1)
			then hacer_union(c1, tail c2, cunion)
			else hacer_union(c1, tail c2, (head c2):cunion)

estaRepetido lista =
	if lista == []
		then True
		else if length(lista) == 1
			then True
			else if esta(head lista, tail lista)
				then False
				else estaRepetido(tail lista)

esta(e, lista) =
	if lista == []
		then False
		else if e == head lista
			then True
			else esta(e, tail lista)

esta2(n, lista) | lista == [] = False
		| n == head lista = True
		| otherwise = esta2(n, tail lista)

interseccion (c1, c2, inter) =
	if c1 == []
		then inter
		else if esta2(head c1, c2)
			then interseccion(tail c1, c2, (head c1):inter)
			else interseccion(tail c1, c2, inter)
