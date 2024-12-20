data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)


postOrder :: Tree a -> [a]

postOrder Empty = []

postOrder (Node x left right) = (postOrder left) ++
                                (postOrder right) ++
                                [x]


-- 1.LEFT
-- 2.RIGHT
-- 3.ROOT
