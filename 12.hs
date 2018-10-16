data RLE a = Single a | Multiple a Int deriving (Show)

createRLE x 1 = Single x
createRLE x k = Multiple x k

decodemodified [] = []
decodemodified ((Single x):xs) = x:(decodemodified xs)
decodemodified ((Multiple x k):xs) = (take k (repeat x)) ++ (decodemodified xs)
