myTakeWhile _ [] = []
myTakeWhile func (x:xs) | func x = x : myTakeWhile func xs
                        | otherwise = []

myDropWhile _ [] = []
myDropWhile func (x:xs) | func x = myDropWhile func xs
                        | otherwise = x : xs
