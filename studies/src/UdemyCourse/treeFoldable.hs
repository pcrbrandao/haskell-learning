data Tree a = Empty | Node a (Tree a) (Tree a)
    deriving (Show)


instance Foldable Tree where
    foldr _ z Empty = z  -- Base Case: Empty Tree
    foldr f z (Node x left right) = f x (foldr f (foldr f z right) left)


avg :: Tree Int -> Double

avg tree = fromIntegral(sumElements tree) / fromIntegral(numElements tree)
    where
        sumElements Empty = 0
        sumElements (Node x left right) = x + sumElements left + sumElements right

        numElements Empty = 0
        numElements (Node x left right) = 1 + numElements left + numElements right


cat :: Tree String -> String
cat tree = foldr (\x acc -> if null acc then x else x ++ " " ++ acc) "" tree


















