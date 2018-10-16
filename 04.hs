myLength l = myLength' l 0

myLength' [] k = k
myLength' (x:xs) k = myLength' (xs) (k + 1)
