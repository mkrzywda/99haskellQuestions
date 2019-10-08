slice :: [a] -> Int -> Int -> [a]
slice xs n m = take (m - n + 1) $ drop (n - 1) xs

slice' :: [a] -> Int -> Int -> [a]
slice' xs n m = [fst elem' | elem' <- elems, snd elem' >= n, snd elem' <= m ]
    where
      len = length xs
      elems = take len $ zip xs [1..]
