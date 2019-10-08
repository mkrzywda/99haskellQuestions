myCompress :: Eq a => [a] -> [a]
myCompress = map head . group
