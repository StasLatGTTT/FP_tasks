-- task 12
euclExt a b = euclExt' a b 1 0 0 1

euclExt' a b x2 y2 _ _ | b == 0 = (a, x2, y2)
euclExt' a b x2 y2 x1 y1 = euclExt' b (mod a b) x1 y1 x y
                    where x = x2 - (div a b) * x1 
                          y = y2 - (div a b) * y1 

-- task 13
noGcd (_, a, b) = (a, b)
solveTri :: Int -> Int -> Int -> [(Int, Int)]
solveTri a b c | mod c d /= 0 = []
                    where d = gcd a b
solveTri a b c = let d = gcd a b
                     a0 = div a d
                     b0 = div b d
                     c0 = div c d
                     (u0, v0) = noGcd (euclExt a0 b0) 
                     u = u0 * c0
                     v = v0 * c0
                 in (u,v) : concat [[(u - b0 * t, v + a0 * t),(u - b0 * (-t), v + a0 * (-t))] | t <- [1..5]]
