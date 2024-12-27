data Tree a = Node a [Tree a]
        deriving (Eq, Show)

pathLength :: Tree a -> Int

pathLength = pathLengthAux 0
  where pathLengthAux d (Node _ ts) = d + sum (map (pathLengthAux (d+1)) ts)
