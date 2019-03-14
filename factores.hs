factores n = [x | x <- [1..n], n `mod` x == 0]

primo n = factores n == [1,n]

primos n = [x | x <- [1..n], primo x]
