module Lib
    ( startPoint
    ) where

import UdemyCourse.Average

startPoint :: IO ()
startPoint = putStrLn . show $ average [1, 2, 3]
