ans = sum [3,6..999] + sum [5,10..999] - sum [15,30..999] -- Finds the sum of all multiples of 3 and 5, then subtracts all multiples of 15 so we don't count them twice
ans2 = foldl (+) 0 [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0] -- Uses foldl to sum and uses trial division to check if it is a multiple of 3 or 5

-- Both answers are completely valid, I just used two different methods to solve it.
-- http://projecteuler.net/problem=1
