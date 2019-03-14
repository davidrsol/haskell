-- funcion para determinar si se tienen repetidos

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
