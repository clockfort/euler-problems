import Data.Ord
import Data.List

main = print $ (last . last) $ sortBy (comparing length) $ group $ sort [ sum [a,b,c] | c <- [1..400], b <- [1..c], a <- [1..b], a*a+b*b == c*c]
