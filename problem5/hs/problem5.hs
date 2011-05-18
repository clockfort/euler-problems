divdown num 1 = True;
divdown num divisor = 
	if ((num `mod` divisor == 0) && (divdown num (divisor-1) ==True))
	then True 
	else False;

main = print (head [ x | x <- [1..], divdown x 20])
