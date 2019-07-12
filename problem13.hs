encodeDirect :: Eq a => [a] -> [ListItem a]
encodeDirect []     = []
encodeDirect (x:xs) = let (group, rest) = span (==x) xs in 
    convertIfSingle (Multiple (1 + length group) x) : encodeDirect rest
    where convertIfSingle (Multiple 1 x) = (Single x)
          otherwise   