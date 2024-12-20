 

scalarProduct :: [Float] -> [Float] -> Float
scalarProduct x y           = sum $ zipWith (*) x y


