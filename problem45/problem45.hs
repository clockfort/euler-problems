import Data.List.Ordered

main = print $ head $ filter (\n -> (n `member`  hexagonals) && ( n `member` pentagonals)) triangles

triangles   = map (floor . (\n -> n*(  n+1)/2)) [286..]
pentagonals = map (floor . (\n -> n*(3*n-1)/2)) [1..]
hexagonals  = map          (\n -> n*(2*n-1))    [1..]
