import Math.Combinatorics.Exact.Binomial
main = putStrLn $ show $ length [ n | n <- [1 .. 100], r <- [1..n] , n `choose` r >= 1000000]
