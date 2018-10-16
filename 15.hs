repli [] _ = []
repli (x:xs) k = (take k (repeat x)) ++ (repli xs k)
