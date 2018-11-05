seg xs i j = take (j-i+1) (drop i xs)

segs xs = [seg xs i j | i <- [0..n], j <- [i..n]]
            where n = (length xs) - 1
