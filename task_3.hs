-- Part a)
my_and True x = x
my_and False _ = False

-- Part b)
my_imp False _ = True
my_imp True x = x

-- Part c)
my_xor False x = x
my_xor True True = False
my_xor True False = True

-- Part d)
my_maj3 False False _ = False
my_maj3 False True x = x
my_maj3 True True _ = True
my_maj3 True False x = x
