import Data.List
import Data.List.Ordered
import Data.Numbers.Primes
import Data.Function

testCoefficients a b = [n^2 + a*n + b | n <-[0..]]

numPrimes a b = length $ takeWhile (has primes) (testCoefficients a b)

main = print $ maximumBy (compare `on` fst) [ (numPrimes a b, a*b) | a<-[-1000..1000], b<-[-1000..1000]]

