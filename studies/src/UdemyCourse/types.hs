data Shape = Circle Float Float Float | Square Float deriving (Show)

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Square s) = s * s
