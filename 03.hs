elementat [] _ = error "Not enough elements in list"
elementat (x:xs) 1 = x
elementat (x:xs) k = elementat xs (k - 1)
