sbseqs [] = [[]]
sbseqs xs = concat [sbseqsl l xs | l <- [1..(length xs)]]

sbseqsl n xs | n > (length xs) = [[]]
sbseqsl n xs | n == (length xs) = [xs]
sbseqsl 1 xs = [[x] | x <- xs]
sbseqsl n (x:xs) = (map (x:) (sbseqsl (n-1) xs)) ++ (sbseqsl n xs)
