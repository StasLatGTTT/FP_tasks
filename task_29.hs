myCurry f a b = f (a, b)
myUncurry f t = f (fst t) (snd t)
