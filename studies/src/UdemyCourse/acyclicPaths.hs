acyclicPaths :: Eq a => a -> a -> [(a,a)] -> [[a]]

acyclicPaths source sink edges
    | source == sink = [[sink]]
    | otherwise = [
        source:path | edge <- edges, (fst edge) == source,
            path <- (acyclicPaths (snd edge) sink
            [e | e <- edges, e /= edge]) ]
