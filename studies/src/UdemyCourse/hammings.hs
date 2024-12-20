
hammings :: [Integer]

hammings = 1 : (merge (map (*2) hammings) $ merge (map (*3) hammings) (map (*5) hammings))
    where
        merge :: [Integer] -> [Integer] -> [Integer]
        merge (x:xs) (y:ys)
            | x < y = x : merge xs (y:ys)
            | x == y = x : merge xs ys
            | otherwise = y : merge (x:xs) ys
            

           
