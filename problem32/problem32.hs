import Data.List

pandigitalProduct a b = sort (show a ++ show b ++ show (a*b)) == concatMap show [1..9]

main = print $ show $ (sum . nub) [ a*b | a<-[1..2000], b<-[1..2000], pandigitalProduct a b]
