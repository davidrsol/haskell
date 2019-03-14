
orden lista = 
	if length(lista) == 1 || lista == []
		then True
		else if menor(head lista, tail lista)
			then orden(tail lista)
			else False


menor (elemento, lista) =
	if elemento <= head lista
		then True
		else False
