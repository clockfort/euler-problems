import Data.List
import Data.List.Ordered
import Data.Numbers.Primes
import Data.Function
import Precomputed

{-
 --Documentation functions. This is how the Precomputed module got precomputed (lookup-table style)

divisors n = (1:) $ Data.List.nub $ concat [ [x, div n x] | x <- [2..limit], rem n x == 0 ] where limit = (floor.sqrt.fromIntegral) n

abundantNumbers = filter (\n -> sum (divisors n) > n) [1..28123]

possibleSums = Data.List.Ordered.nub $ sort $ [n + m | n <-abundantNumbers,m<-abundantNumbers]
-}

main = putStrLn $ show $ sum $ filter (\n -> has precomputedPossibleSums n == False) [1..28123]

