-- Generates a list of lists containing the products of a, b, and c if it is a Pythagorean triple adding up to 1000.
-- It then filters out all of the empty lists.
ans = [head x | x <- [[a*b*(1000-a-b) | a <- [1..998], isPythagoreanTriple a b (1000-a-b)] | b <- [1..998]], x /= []]

isPythagoreanTriple :: (Integral a) => a -> a -> a -> Bool
isPythagoreanTriple a b c = a*a + b*b == c*c

-- https://projecteuler.net/problem=9