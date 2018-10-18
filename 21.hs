insertAt x l 1 = (x:l)
insertAt _ [] _ = []
insertAt x l k = ((head l):(insertAt x (tail l) (k - 1)))
