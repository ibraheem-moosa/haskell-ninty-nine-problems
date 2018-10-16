pack l = pack' l []

pack' [] k = [k]
pack' (x:[]) k = [x:k]
pack' (x:y:xs) k = if (x == y) then pack' (y:xs) (x:k) else ((x:k):pack' (y:xs) [])
