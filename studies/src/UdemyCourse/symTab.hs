type SymTab a = String -> Maybe a

empty :: SymTab a
empty = (\_ -> Nothing)
                    
get :: SymTab a -> String -> Maybe a
get symbolicTable key = symbolicTable key

set :: SymTab a -> String -> a -> SymTab a
set table k v = (\a -> if (k == a) then Just v else table a)



                    
                    
                    
                    
                    
                    
