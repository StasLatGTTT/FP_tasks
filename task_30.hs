-- f x y = h (g x y)
g :: a -> b -> d
h :: d -> c
-- f :: a -> b -> c
f = curry (h . (uncurry g))
