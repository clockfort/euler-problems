import Data.List
main = print (sort (permutations [0 .. 9]) !! (1000000 - 1))
