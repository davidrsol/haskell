
orden lista = and[x <= y | (x,y) <- pares lista]

pares lista = zip lista(tail lista)
