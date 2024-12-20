
primes :: [Integer]

primes =  filter isPrime $ iterate (+1) 1
    where
        isPrime :: Integer -> Bool
        isPrime 1 = False
        isPrime 2 = True
        isPrime n
            | even n = False
            | otherwise = isPrimeAux 3
                where
                    isPrimeAux :: Integer -> Bool
                    isPrimeAux x
                        | x >= div n 2 = True
                        | mod n x == 0 = False
                        | otherwise = isPrimeAux (x+2)






