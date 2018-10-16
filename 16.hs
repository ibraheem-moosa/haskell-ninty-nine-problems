dropEvery l k = dropEvery' l k 1

dropEvery' [] _ _ = []
dropEvery' (x:xs) k k' = if (k == k') then dropEvery xs k else x:(dropEvery' xs k (k' + 1))
