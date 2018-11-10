primary 0 = False
primary 1 = False
primary x = not ( or [mod x i == 0 | i <- [2..(div x 2)]])
part n = answ
            where as = filter primary [2..n]
                  bs = [(x, n - x) | x <- as, primary (n - x)]
                  answ = if null bs
                         then (-1, -1)
                         else head bs
