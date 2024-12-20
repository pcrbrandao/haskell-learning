countIf :: (Int -> Bool) -> [Int] -> Int
countIf f l = length $ filter f l
