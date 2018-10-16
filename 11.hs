data RLE a = Single a | Multiple a Int deriving (Show)

createRLE x 1 = Single x
createRLE x k = Multiple x k

encodemodified [] = []
encodemodified (x:xs) = encode' xs x 1

encode' [] x' k = [createRLE x' k]
encode' (x:xs) x' k = if (x == x') then encode' xs x (k+1) else ((createRLE x' k):encode' xs x 1)
