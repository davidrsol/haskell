
interseccion (c1, c2, ci)
	= if c1 == []
		then reverse ci
		else if en_lista(head c1, c2)
			then interseccion(tail c1, c2, (head c1):ci)
			else interseccion(tail c1, c2, ci)



en_lista (elemento, lista) 
	= if lista == [] 
		then False 
		else if elemento == head lista 
			then True 
			else en_lista (elemento, tail lista)
