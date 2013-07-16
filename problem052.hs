import Data.List
main = print( head [ show x | x <- [1..], [sort (show x),sort (show (2*x)),sort (show (3*x))]==[sort (show (4*x)),sort (show (5*x)),sort (show (6*x))]] )
