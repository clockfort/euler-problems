import Data.List.Ordered
import Data.Numbers.Primes

main = print $ head $ (odds `minus` allPossibles) `minus` primes

odds = [7,9..]

allPossibles = nub $ sort [ p + d | p <- take 1000 primes, d <- take 1000 doubleSquares , odd (p+d)]

doubleSquares = map (\n -> 2*n*n) [1..]
