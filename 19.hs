rotate l k = rotate' l (mod k (length l))

rotate' l k = b ++ a
    where (a, b) = splitAt k l

