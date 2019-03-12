pares (c1, c2, par) = 
	if c1 == []
		then par
		else pares ((tail c1), c2, forma(head c1, c2, []):par)

forma(e, c2, subpar) =
	if c2 == []
		then subpar
		else forma(e, tail c2, (e:head c2:[]):subpar) 

merge [] ys = ys
merge (x:xs) ys = x:merge ys xs
