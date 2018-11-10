-- Part a)
myMap func xs = foldl use [] xs
                        where use acc x = acc ++ [(func x)]

-- Part b)
myFilter func xs = foldr step [] xs
                    where step x ys | func x = x : ys
                                    | otherwise = ys

-- Part c)
myAnd xs = foldl (&&) True xs

-- Part d)
myOr xs = foldl (||) False xs

-- Part e)
myAll func xs = foldl step True xs
                    where step acc x = acc && (func x)

-- Part f)
myAny func xs = foldl step False xs
                    where step acc x = acc || (func x)
