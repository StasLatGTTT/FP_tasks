-- check if number is a square of an integer
isSqr n = (sqrt (fromIntegral n)) == fromIntegral (floor (sqrt (fromIntegral n)))
-- check if three number make a pythagorian triplet
isPyth (x, y, z) = isSqr zz && sqrt (fromIntegral zz) == fromIntegral z
                where zz = x^2 + y^2
-- generate all triplets with defined sum of elements
triplets n = [(x,y,z) | x <- [1..(div n 2)], y <- [x..(n-x)], let z = n - x - y, z >= y, y >= x, x > 0]
-- find pythagorian triplets among set
findPyth xs = [x | x <- xs, isPyth x]
-- generator of pythagorian triplets
pythagoras_gen n = findPyth (triplets n) ++ pythagoras_gen (n + 1)
pythagoras = pythagoras_gen 12
