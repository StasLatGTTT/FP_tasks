myScanl _ acc [] = [acc]
myScanl func acc (x:[]) = acc : [func acc x]
myScanl func acc (x:xs) = acc : (myScanl func res xs)
                            where res = func acc x
