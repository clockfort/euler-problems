main = print (sum [x | x<- [1..9], x `mod` 3==0 || x `mod` 5==0])
