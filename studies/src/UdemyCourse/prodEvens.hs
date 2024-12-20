
prod :: [Int] -> Int
prod = foldl (*) 1

prodEvens :: [Int] -> Int

prodEvens = prod . filter even

-- prodEvens x = prod (filter even x)
