decode :: Eq a => [(Int,a)] -> [a]
decode xs = foldr f [] xs
  where
    f (1, x) r = x : r
    f (k, x) r = x : f (k-1, x) r