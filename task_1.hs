-- Part a)
list_gen_1 :: Int -> [(Int, Int -> Int)]
list_gen_1 a = [(x, succ) | x <- [1..a]]
tmp_list_1 = [ (list_gen_1 x) | x <- [1..3]]
answer_a :: [([(Int, Int -> Int)], Char)]
answer_a = [(x, 'ы') | x <- tmp_list_1]

-- Part b)
answer_b :: [(Char, Int)] -> ([Int], [Char])
answer_b a = ([ snd x | x <- a], [fst x | x <- a])

-- Part c)
answer_c a = (a,a)

-- Part d)
answer_d :: (a -> b) -> a -> b
answer_d f a = f a
