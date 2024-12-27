printHalf :: Int -> String
printHalf x
    | isNothing (half x) = "Num impar"
    | otherwise = show $ numInJust (half x)
    where
        isNothing :: Maybe a -> Bool
        isNothing Nothing = True
        isNothing _ = False

        numInJust :: Maybe Int -> Int
        numInJust Nothing = error "Não é um número"
        numInJust (Just num) = num

        half :: Int -> Maybe Int
        half num
            | even num = Just (div num 2)
            | otherwise = Nothing