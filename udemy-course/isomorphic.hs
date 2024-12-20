data Tree a = Node a (Tree a) (Tree a) | Empty 
    deriving (Show)
    
    
isomorphic :: Eq a => Tree a -> Tree a -> Bool

isomorphic Empty Empty = True
isomorphic Empty _ = False
isomorphic _ Empty = False

isomorphic (Node x l_a r_a) (Node y l_b r_b)
    | x /= y = False
    | otherwise = (isomorphic l_a l_b && isomorphic r_a r_b) ||
                  (isomorphic l_a r_b && isomorphic r_a l_b)
