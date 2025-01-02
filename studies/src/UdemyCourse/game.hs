import System.IO

prompt t = do putStr t
              hFlush stdout

game :: IO()

game =
    do putStrLn "Think of a number between 1 and 100!"
       play 1 100
    
play :: Int -> Int -> IO()
play lo hi | lo>hi = putStrLn "This is not possible!"
play lo hi =
  do let mid = (lo+hi) `div` 2
     ans <- validM (`elem` ["lower","higher","yes"]) $
                   do prompt ("Is it "++show mid++"? ")
                      getLine
     case ans of
       "yes" -> putStrLn "Great, I won!"
       "lower" -> play lo (mid-1)
       "higher" -> play (mid+1) hi


validM :: (a->Bool) -> IO a -> IO a
validM valid ask =
  do ans <- ask
     if valid ans then return ans
                  else do putStrLn "Answer properly!"
                          validM valid ask
  
  
  
  
  
            
            
            
            
            
            
        
        
        
        
        
        
