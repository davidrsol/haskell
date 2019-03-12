import System.Environment
import System.IO

pares lista = zip lista (tail lista)

ordenada lista = and[ x <= y | (x,y) <- pares lista]

longp (lista) = [ y - x - 1 | (x,y) <- pares lista]

posicion (e, lista) = [ i | (e2,i) <- zip lista [0..n], e == e2] where n = length lista - 1 

par_lista lista = zip lista [0..n] where n = length lista - 1 


posiciones (l1, l2, l_pos) =
	if l1 == []
		then reverse l_pos
		else
			posiciones (tail l1, l2, posicion (head l1, l2): l_pos)



long_palabras(frase) =
	longp (reverse(length frase:reverse(-1:posicion(' ', frase)) ))


long_palabras_2(frase) =
	longp(posicion(' ',reverse (' ':reverse (' ':frase))))


--lee :: IO String -> char[]

lee = do 
	texto <- readFile "texto.txt"
	putStrLn texto

leeGet = do 
	texto <- readFile "texto.txt"
	x <- getLine
	putStrLn x


leeLuis = do
	handle <- openFile "texto.txt" ReadMode
	c <- hGetContents handle
	putStr c
	hClose handle
	

lee2 = readFile "texto.txt" >>= \s -> print s


