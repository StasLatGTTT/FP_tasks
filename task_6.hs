-- factorize number
factor n = [x | x <- [1..(div n 2)], mod n x == 0]
-- check two numbers
amicable x y = sum (factor x) == y && sum (factor y) == x
