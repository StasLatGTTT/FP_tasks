part 0 _ = [[]]
part 1 n = [[n]]
part m n = concat [map (i:) (part (m-1) (n-i)) | i <- [0..n]]
