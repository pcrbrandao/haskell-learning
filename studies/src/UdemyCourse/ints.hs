ints :: [Integer]

ints = iterate integers 0
    where
        integers :: Integer  -> Integer
        integers x
            | x > 0 = -x
            | otherwise = 1 - x



