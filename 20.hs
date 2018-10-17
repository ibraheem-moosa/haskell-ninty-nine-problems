removeat [] _ = []
removeat (x:xs) 1 = xs
removeat (x:xs) k = x:(removeat xs (k - 1))
