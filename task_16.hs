noRepeat xs = [ fst(x) | x <- zip xs [0..], notElem (fst x) (take (snd x) xs)]
