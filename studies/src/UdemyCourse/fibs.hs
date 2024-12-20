fibs :: [Integer]

fibs = fibo 0 1
    where
        fibo :: Integer -> Integer -> [Integer]
        fibo x y = x : (fibo y (x+y))
 



