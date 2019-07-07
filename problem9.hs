myPack (x:xs) = let (first,rest) = span (==x) xs
               in (x:first) : myPack rest
myPack [] = []