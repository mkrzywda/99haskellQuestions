replication :: [a] -> Int -> [a]
replication xs n = concatMap (take n . repeat) xs
