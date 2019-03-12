primos n = [x | x <- [1..n], primo x]

primo n = factores n == [1,n]

factores n = [x | x <- [1..n], n `mod`x== 0] 
