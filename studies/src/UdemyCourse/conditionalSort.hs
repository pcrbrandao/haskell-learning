import System.IO
import Data.List

prompt t = do putStr t
              hFlush stdout


sortNumbers = do unsorted_solution <- readUntilZero
                 print (sort unsorted_solution)
              
              
readUntilZero =
    do prompt "Enter a number (0 to end)"
       n <- readLn
       if n == 0 then return [] else do sub_sol <- readUntilZero
                                        return (n:sub_sol)
   
   
   
   
   
   
   
   
   
