-- Part a)
myUnzip_a xs = (map fst xs, map snd xs)

-- Part b)
-- Using foldl instead of foldr; the kinda the same, right?
myUnzip_b xs = (foldl (\acc x -> acc ++ [fst x]) [] xs, foldl (\acc x -> acc ++ [snd x]) [] xs)
