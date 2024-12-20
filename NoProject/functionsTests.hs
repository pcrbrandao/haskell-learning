import Distribution.Simple.Command (OptDescr(BoolOpt))

absValue :: Int -> Int
absValue x
    | x >= 0 = x
    | otherwise = -x

power :: Int -> Int -> Int
power _ 0 = 1
power x p
    | even p = n * n
    | otherwise = n * n * x
    where
        n = power x (p `div` 2)

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime x = not (hasDivisor(x - 1))
    where
        hasDivisor :: Int -> Bool
        hasDivisor 1 = False
        hasDivisor n = mod x n == 0 || hasDivisor(n - 1)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

scalarProduct :: [Float] -> [Float] -> Float
scalarProduct x y = let productList = zipWith (*) x y in
    sum productList

generatePassword :: Int -> Int -> Int -> String
generatePassword 0 0 0 = ""
generatePassword lettersCount numbersCount symbolsCount =
    let letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
        numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
        symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']
    in
        letters

average :: [Int] -> Float
average x = sumElem / len
    where
        sumElem = fromIntegral(sum(x)) :: Float
        len = fromIntegral(length(x)) :: Float

combined :: [Int] -> [Int -> Int] -> [[Int]]
combined l fs = [map f l | f <- fs]

countIf :: (Int -> Bool) -> [Int] -> Int
countIf f l = length $ filter f l


countIn :: [[Int]] -> Int -> [Int]
countIn l x = map count l
    where
        count :: [Int] -> Int
        count = length . (filter (==x))

dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x:x:dupli xs

eql :: [Int] -> [Int] -> Bool
eql x y
  | length x /= length y    = False
  | otherwise               = and $ zipWith (==) x y

firstWord :: String -> String
firstWord = takeWhile(/= ' ') . dropWhile (== ' ')

flatten :: [[Int]] -> [Int]
flatten = foldr (++) [] -- (implicit input)
-- flatten x = foldr (++) [] x (explicit input)

insertIn :: a -> [a] -> Int -> [a]
insertIn x ys 1 = x:ys
insertIn x (y:ys) n = y:insertIn x ys (n-1)

myButLast :: [a] -> a
myButLast [x,_] = x
myButLast (_:xs) = myButLast xs

myButLast2 :: [a] -> a
myButLast2 = head . tail . reverse

myLast :: [a] -> a
myLast [] = error "Empty List"
myLast [x] = x
myLast (_:xs) = myLast xs

myLast2 :: [a] -> a
myLast2 = head . reverse

powersOf2 :: [Int]
powersOf2 = iterate (*2) 1

prod :: [Int] -> Int
prod = foldl (*) 1

prodEvens :: [Int] -> Int
prodEvens = prod . filter even
-- prodEvens x = prod (filter even x)

myReverse :: [Int] -> [Int]
myReverse = foldl (flip(:)) []
-- myReverse x = foldl (flip(:)) [] x