-- funcion que realiza la sumatoria de los elementos de una lista

suma (total, lista) = 
	if lista == [] 
		then total 
		else suma (total + head lista, tail lista)

multiplica (total, lista) = if lista == [] then total else multiplica (total * head lista, tail lista)

