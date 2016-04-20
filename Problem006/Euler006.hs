-- Very straightforward.
-- First part finds the sum of squares
-- Second part finds square of sum

ans = abs $ (sum [x*x | x <- [1..100]])-((sum [1..100]) ** 2)

-- https://projecteuler.net/problem=6