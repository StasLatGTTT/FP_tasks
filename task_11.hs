-- Part a)
euclMod a b | a < b = euclMod b a
euclMod a b | mod a b == 0 = b
euclMod a b = euclMod b (mod a b)

-- Part b)
euclSub a b | a < b = euclSub b a
euclSub a b | a - b == 0 = b
euclSub a b = euclSub (a-b) b

-- Check algs
checker f = all (\x -> x == True) [(gcd a b) == (f a b) | a <- [1..1000], b <- [1..1000]]
