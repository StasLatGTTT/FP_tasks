dupl [] = []
dupl (x:xs) = [x] ++ [x] ++ (dupl xs)
