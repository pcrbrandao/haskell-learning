data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)


inOrder :: Tree a -> [a]

inOrder Empty = []

inOrder (Node x l_c r_c) = inOrder (l_c) ++ [x] ++ inOrder (r_c)

                    
--Inorder : LEFT, ROOT, RIGHT                    
                
