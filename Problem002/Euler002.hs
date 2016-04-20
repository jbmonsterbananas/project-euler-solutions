fib = 1 : 2 : [a + b | (a, b) <- zip fib $ tail fib] -- Defines the fibonacci numbers by adding the two previous terms in fib from the tuple: zip (fib (tail fib))
ans = sum [x | x <- (takeWhile (<= 4000000) fib), x `mod` 2 == 0] -- Gets the sum of numbers in fib while it's <=4000000, only if they're even

-- https://projecteuler.net/problem=2