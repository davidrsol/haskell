
-- funcion para tomar cada elemento de la lista y ver si no se repite

repetidos lista = 
	if lista == [] 	
		then False 
		else if en_lista(head lista, tail lista) 
			then True 
			else repetidos (tail lista)

-- una vez que se toma un elemento se busca en la lista, si esta
-- lo indica y si no lo encuentra dice que no esta repetido

en_lista (elemento, lista) 
	= if lista == [] 
		then False 
		else if elemento == head lista 
			then True 
			else en_lista (elemento, tail lista)

-- verifica si encuentra repetidos y de no ser el caso lo indica

conjunto lista = 
	if not(repetidos(lista)) 
		then True 
		else False


