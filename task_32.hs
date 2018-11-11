-- Part a)
compressor [] = []
compressor xs = (head xs, num) : compressor (drop num xs)
                    where num = countFirst xs
                          countFirst xs = length $ takeWhile (head xs ==) xs

-- Part b)
decompressor [] = []
decompressor (x:xs) = replicate (snd x) (fst x) ++ decompressor xs
