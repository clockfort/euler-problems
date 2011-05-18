main = print(foldl (\acc x -> acc ++ (show x)) "0." [1..90])
