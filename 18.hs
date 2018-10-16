slice [] _ _ = []

slice (x:xs) i k 
    | i > k = [] 
    | i == 1 = (take k (x:xs))
    | otherwise = slice xs (i - 1) (k - 1)
