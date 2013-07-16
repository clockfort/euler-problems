import Data.Bits
import Data.List

fib :: Int -> Integer
fib n = snd . foldl' fib' (1, 0) . dropWhile not $
            [testBit n k | k <- let s = bitSize n in [s-1,s-2..0]]
    where
        fib' (f, g) p
            | p         = (f*(f+2*g), ss)
            | otherwise = (ss, g*(2*f-g))
            where ss = f*f+g*g

main = print (head [x | x <- [1..], length (show (fib x))>=1000])
