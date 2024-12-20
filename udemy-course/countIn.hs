
countIn :: [[Int]] -> Int -> [Int]

countIn l x = map count l
    where
        count :: [Int] -> Int
        count = length . (filter (==x))


