data Tree a = Node a [Tree a]
        deriving (Eq, Show)
        
bottomUp :: Tree a -> [a]

bottomUp (Node x ts) = concatMap bottomUp ts ++ [x]
