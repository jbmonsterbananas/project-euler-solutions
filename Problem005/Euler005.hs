-- In order to solve, all you have to do is take the 
-- product of the largest power of each prime less than n

-- Ex. n=10 | 2520 = 2^3 * 3^2 * 5 * 7
--     n=20 |  ans = 2^4 * 3^2 * 5 * 7 * 11 * 13 * 17 * 19

-- This has the same result as taking the lcm of each value less than n

ans = foldl lcm 1 [1..20]

-- https://projecteuler.net/problem=5