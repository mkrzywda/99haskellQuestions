elementAt :: [a] -> Int -> a
elementAt (x:xs) 1 = x
elementAt (_:xs) n = elementAt xs (n-1)
