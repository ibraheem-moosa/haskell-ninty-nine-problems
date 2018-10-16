isPalindrome l = isSame l (reverse l)

isSame [] [] = True
isSame _ [] = False
isSame [] _ = False
isSame (x:xs) (y:ys) = if (x == y) then True else False
