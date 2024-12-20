
flatten :: [[Int]] -> [Int]

flatten = foldr (++) [] -- (implicit input)

-- flatten x = foldr (++) [] x (explicit input)
