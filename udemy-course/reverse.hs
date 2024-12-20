

myReverse :: [Int] -> [Int]

myReverse = foldl (flip(:)) []

-- myReverse x = foldl (flip(:)) [] x
    
