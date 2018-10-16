split l k = split' l k []

split' l 0 l' = (reverse l', l)
split' [] _ l' = (reverse l', [])
split' (x:xs) k l' = split' xs (k - 1) (x:l')
