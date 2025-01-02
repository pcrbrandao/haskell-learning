import Data.List(sort)


type Pos = (Int,Int)


inside :: Pos -> Bool
inside (x,y) = inside' x && inside' y
  where inside' i = 1 <= i && i <= 8

moves :: Pos -> [Pos]
moves (r,c) =
  filter
    inside
    [ (r + 2,c - 1),
      (r + 2,c + 1),
      (r - 2, c - 1),
      (r - 2, c + 1),
      (r + 1, c - 2),
      (r + 1, c + 2),
      (r - 1, c - 2),
      (r - 1, c + 2)
      ]

canGo3 :: Pos -> Pos -> Bool

canGo3 p q = q `elem` destinations
  where destinations = concatMap moves $  concatMap moves $ moves p

canGo3' :: Pos -> Pos -> Bool

canGo3' p q = q `elem` destinations
  where destinations = moves p >>= moves >>= moves























