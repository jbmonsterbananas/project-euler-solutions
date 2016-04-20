ans = maximum [x | x <- b a, isPalindromeI x]

-- b just combines the list of lists, a, into one list of Ints
a = [[x*y | y <- [x..999]] | x <- [900..999]]
b [] = []
b x = head x ++ b (tail x)

-- Checks to see if a number is a Palindrome by converting to a string
isPalindromeI n
	| str == reverse str = True
	| otherwise = False
	where str = show n

-- Incredible one liner from quangntenemy at https://projecteuler.net/thread=4#2189
-- I never thought of doing it like this, but it works just as well; if not, better.
ans2 = [m | a <- [9], b <- [0..9], c <- [0..9], m <- [100001* a + 10010 * b + 1100 * c], [x | x <- [100..999], m `mod` x == 0 && m `div` x < 1000] /= []]

-- https://projecteuler.net/problem=4