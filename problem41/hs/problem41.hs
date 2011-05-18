import Data.List
isPrime :: Integer -> Bool
isPrime p
    | p < 2  = False
    | p == 2 = True
    | p > 2  = all (\n -> p `mod` n /= 0) (getPrimes sqrtp)
    where getPrimes z = takeWhile (<= z) allPrimes
          sqrtp = floor . sqrt $ fromIntegral p

allPrimes = filter (isPrime) [2..]

main = print(maximum [ z | z <- [ read (foldl (\acc y -> acc ++ (show y)) "" x) :: Integer | x <- permutations [1 .. 7]], isPrime z])
