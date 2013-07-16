revInt x = read (reverse (show x)) :: Integer

isPalindrome x = (reverse (show x) == (show x) )

chainUntilPalindrome num 50 = True
chainUntilPalindrome num iteration =
        if(isPalindrome (revInt num + num) )
        then    False
        else    chainUntilPalindrome (revInt num + num) (iteration+1)

main = print (length [ x | x <- [1 .. 9999], chainUntilPalindrome x 0 ])
