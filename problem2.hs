binetFib n = round $ phi ** fromIntegral n / sq5
  where
    sq5 = sqrt 5 :: Double
    phi = (1 + sq5) / 2

main = print (sum [binetFib x | x <- [0..10000], even (binetFib x) && binetFib x < 4000000])
