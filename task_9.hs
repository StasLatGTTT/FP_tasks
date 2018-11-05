-- Part a)
myHead (x:xs) = x

-- Part b)
myTail (x:xs) = xs

-- Part c)
myTake n (x:xs) | n > 0 = x : myTake (n-1) xs
myTake n xs = []

-- Part d)
myDrop n xs | n < 1 = xs
myDrop n (x:xs) = myDrop (n - 1) xs

-- Part e)
myNull [] = True
myNull (x:xs) = False

-- Part f)
myElem e [] = False
myElem e (x:xs) = e == x || myElem e xs

-- Part g)
myGet xs n | n < 0 = error "myGet: Negative index"
myGet (x:xs) 0 = x
myGet (x:xs) n = myGet xs (n-1)

-- Part h)
myAdd [] xs = xs
myAdd xs [] = xs
myAdd (x:xs) ys = x : (myAdd xs ys)

-- Part i)
myConcat [] = []
myConcat (x:xs) = myAdd x (myConcat xs)
