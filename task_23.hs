myFoldr1 :: (a -> a -> a) -> [a] -> a
myFoldr1 f xs = foldr f (last xs) (init xs)
