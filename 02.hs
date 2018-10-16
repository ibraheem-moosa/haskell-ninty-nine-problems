myPenultimate [] = error "Empty list."
myPenultimate (x:[]) = error "List length 1."
myPenultimate (x:y:[]) = x
myPenultimate (x:xs) = myPenultimate xs
