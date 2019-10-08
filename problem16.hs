dropEvery :: [a] -> Int -> [a]
dropEvery xs n = f xs 1
    where
      f :: [a] -> Int -> [a]
      f [] _ = []
      f (y:ys) m = if m == n
                     then f ys 1
                     else y : f ys (m + 1)
