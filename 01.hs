--myLast [] = error "List is empty"
--myLast (x:[]) = x
--myLast (x:xs) = myLast xs

myLast = foldl1' (flip const)
