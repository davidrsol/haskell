import System.Environment
import System.IO

lee = 	do 
	h <- readFile "texto.txt" 
	print h
