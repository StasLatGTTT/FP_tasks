findNthMin n (x:xs) = if n == (l +1)
                      then x
                      else if n <= l
                           then findNthMin n lesser
                           else findNthMin (n-l-1) greater
                      where lesser = [y | y <- xs, y < x]
                            greater = [y | y <- xs, y > x]
                            l = length lesser
