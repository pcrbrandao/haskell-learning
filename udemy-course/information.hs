data Tree a = Node a [Tree a]
        deriving (Eq, Show)
        

stringToTree :: String -> Tree Char

stringToTree (x:xs) = Node x (fst (stringToTrees xs))
    where stringToTrees (x:xs)
            | x == '^' = ([],xs)
            | otherwise = ([Node x trees0] ++ trees1, rest1)
                where  (trees0,rest0) = stringToTrees xs
                       (trees1,rest1) = stringToTrees rest0
                
            
          


-- stringToTree "afg^^c^bd^e^^^" 
