import Data.Char
fac 1 = 1
fac n = n * fac (n - 1)
main = print(sum [ digitToInt x | x <- show (fac(100))])
