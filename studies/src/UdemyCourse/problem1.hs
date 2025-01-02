fsmap :: a -> [a -> a] -> a

fsmap x [] = x      -- Base Case

fsmap x (f:sublist) = fsmap (f x) sublist







    
