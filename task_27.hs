-- Part a)
rotts_a xs = take (length xs) (iterate myShift xs)
                    where myShift xs = (last xs) : (init xs) 

-- Part b)
rotts_b xs = init (scanl myShift xs xs)
                where myShift xs y = (last xs) : (init xs)
