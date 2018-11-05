nrem n xs = [fst(x) | x <- zip xs [0..], mod (snd x) n /= (n-1)]
