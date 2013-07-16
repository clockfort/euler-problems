import Data.Char
main = print (sum [ read x :: Integer | x <- [show x|x<-[1000..999999]], sum [(digitToInt y)^5 | y <- x] == read x ])
