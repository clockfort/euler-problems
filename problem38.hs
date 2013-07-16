pandigital n 1 = show n
pandigital n i = (pandigital n (i-1)) ++ show (n * i)

