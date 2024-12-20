insertIn :: a -> [a] -> Int -> [a]

insertIn x ys 1 = x:ys

insertIn x (y:ys) n = y:insertIn x ys (n-1)

