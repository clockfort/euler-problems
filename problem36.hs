import Numeric
import Data.Char

isPalindrome x = (reverse (show x) == (show x) )

main = print (sum [x|x<-[1,3..999999],(isPalindrome (showIntAtBase 2 intToDigit x "")) && (isPalindrome (show x))])
