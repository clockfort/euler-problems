import Data.List
main = print( length( nub (concat [(map (^x) [2..100])|x<-[2..100]])) )
