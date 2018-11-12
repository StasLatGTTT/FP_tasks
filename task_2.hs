-- Part a)
-- e1 interchanges objects in tuple
e1 :: (a, b) -> (b, a)
e1 (x, y) = (y, x)

-- Part c)
-- e2 applies second part of tuple to the first
e2 :: (a, (a -> b)) -> b
e2 (x, y) = y x

-- Part c)
-- e3 applies first part of the ruple to the second
e3 :: ((a -> b), a) -> b
e3 (x, y) = x y

-- Part d)
-- e4 applies second argument to first
e4 :: a -> (a -> b) -> b
e4 x y = y x

-- Part e)
-- e5 tries to apply first argument to second argument and itself
-- fails due to cunstructing an infinite type
-- e5 x y = x y x
