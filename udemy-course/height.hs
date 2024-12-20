
data Tree a = Node a (Tree a) (Tree a) | Empty 
    deriving (Show)
    
    
height :: Tree a -> Int
height Empty = 0
height (Node _ lc rc)  = 1 + max (lc) (height rc)

