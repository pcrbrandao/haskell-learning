data Tree a = Node a [Tree a]
        deriving (Eq, Show)

numnodes :: Tree a -> Int

numnodes (Node _ children) = 1 + sum (map numnodes children)

