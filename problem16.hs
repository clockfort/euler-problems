import Data.Char
main = print (sum [ digitToInt x | x <- show (2^1000)])
