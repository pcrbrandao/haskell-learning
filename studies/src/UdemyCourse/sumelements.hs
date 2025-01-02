import System.IO

prompt t = do putStr t
              hFlush stdout

sumOfNumbers =
 do putStrLn "Compute the sum of some numbers."
    prompt "How many numbers?"
    n <- readLn
    let ask n = do prompt ("Enter a number:")
                   readLn
    list_numbers <- mapM ask [1..n]
    putStr "The sum of the numbers is "
    print (sum list_numbers)








