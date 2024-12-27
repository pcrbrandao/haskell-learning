module Lib (
    startPoint,
    shuffleList
    ) where

import System.Random ( newStdGen )
import System.Random.Shuffle ( shuffle' )

startPoint :: IO ()
startPoint = do
    shuffled <- shuffleList ([1, 2, 3, 4, 5] :: [Int])
    putStrLn ("Resultado: " ++ show shuffled)

shuffleList :: [a] -> IO [a]
shuffleList [] = return []
shuffleList xs = do
    shuffle' xs (length xs) <$> newStdGen