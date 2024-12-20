combined :: [Int] -> [Int -> Int] -> [[Int]]

combined l fs = [map f l | f <- fs]
