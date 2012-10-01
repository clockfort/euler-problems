digitalSum n = sum $ [ read [c] :: Int | c <- show n ]
main = putStrLn $ show $ maximum  [ digitalSum (a^b) | a <- [1 .. 99], b <- [1 .. 99]]
