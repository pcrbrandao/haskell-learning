data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)


preOrder :: Tree a -> [a]

preOrder Empty = []

preOrder (Node x lt rt) = [x] ++ preOrder (lt) ++ preOrder (rt)


-- preOrder
-- 1.ROOT
-- 2.LEFT
-- 3.RIGHT
