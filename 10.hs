pack l = pack' l []

pack' [] k = [k]
pack' (x:[]) k = [x:k]
pack' (x:y:xs) k = if (x == y) then pack' (y:xs) (x:k) else ((x:k):pack' (y:xs) [])

--encode l = map (\l -> (length l, head l)) (pack l)

encode [] = []
encode (x:xs) = encode' xs x 1

encode' [] x' k = [(k,x')]
encode' (x:xs) x' k = if (x == x') then encode' xs x (k+1) else ((k,x'):encode' xs x 1)
