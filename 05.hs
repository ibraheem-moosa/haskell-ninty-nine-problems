myReverse l = myReverse' l []

myReverse' [] l = l
myReverse' (x:xs) l = myReverse' xs (x:l)
