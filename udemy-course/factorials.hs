factorials :: [Integer]

factorials = scanl (*) 1 $ iterate (+1) 1

--scanl (*) 1 [1,2,3,4,5,6,7,8...]


-- -> [1,1,2,6,24,120,720...] -> Factorial Sequence
