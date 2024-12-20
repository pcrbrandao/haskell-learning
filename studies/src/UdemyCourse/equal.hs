
data Tree a = Node a (Tree a) (Tree a) | Empty 
    deriving (Show)


equal :: Eq a => Tree a -> Tree a -> Bool 

equal Empty Empty = True
equal _ Empty = False
equal Empty _ = False

equal (Node x la ra) (Node y lb rb)
    | x /= y = False
    | otherwise = equal la lb && equal ra rb
    
