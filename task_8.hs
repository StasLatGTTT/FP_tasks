type Bfn = Bool -> Bool -> Bool -> Bool

bfnAdd a b c = xor a (xor b c)
bfnMul a b c = and a (and b c)
