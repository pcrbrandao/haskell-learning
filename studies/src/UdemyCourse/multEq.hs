multEq :: Int -> Int -> [Int]

multEq x y = iterate(*n) 1
    where
        n = x*y


