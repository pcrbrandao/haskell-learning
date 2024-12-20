data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)

breadthFirst :: Tree a -> [a]

breadthFirst t = bfs [t]



bfs :: [Tree a] -> [a]
bfs [] = []
bfs (Empty:xs) = bfs xs
bfs ((Node x lc rc):xs) = x : (bfs $ xs ++ [lc,rc])










