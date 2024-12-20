triangulars :: [Integer]

triangulars = scanl (+) 0 $ iterate (+1) 1


-- scanl (+) 0 [1,2,3,4,5,6,7,8,9...]

-- [0,1,3,6,10...] -> triangular sequence
