module UdemyCourse.Average (
    average
) where

average :: [Int] -> Float

average x = sumElem / len
    where
        sumElem = fromIntegral(sum(x)) :: Float
        len = fromIntegral(length(x)) :: Float
       

       
