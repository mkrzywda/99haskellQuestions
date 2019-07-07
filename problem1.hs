myLast :: [a] -> a
myLast [] = error "Not working for empty list"
myLast [x] = x
myLast (_:xs) = myLast xs