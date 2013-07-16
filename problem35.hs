import Data.Numbers.Primes
import Data.List
import Data.List.Ordered

rotate xs n = take (length xs) $ drop (length xs + n) $ cycle xs

rotations list = [ rotate list n | n <- [1.. (length list)]]

strRot n = [read s :: Integer | s <- rotations $ show n]
isCirclePrime n = Data.List.Ordered.nub (sort (strRot n)) `subset` possibilities

possibilities = take 78497 primes
main = print $ length [ n | n <- possibilities, isCirclePrime n]
