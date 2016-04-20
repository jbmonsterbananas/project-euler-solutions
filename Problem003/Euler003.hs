import Data.List
import Data.Array.Unboxed

ans = maximum [x | x <- primeFactors 600851475143] -- Take the largest prime factor of 600851475143

-- Generates prime factors of a number x using a list of primes, primesList
-- I got this piece of code from elt at https://projecteuler.net/thread=3#2048
primeFactors x = primeFactors' x 0
primeFactors' 0 _ = []	
primeFactors' x i
	| (current*current > x) = [x]
	| 0 == x `mod` current = current:primeFactors' (x `div` current) 0
	| otherwise = primeFactors' x (i+1)
		where
			current = primesList!!i

-- Generates an infinite list of prime numbers
primesList = 2 : prs ()
	where
		prs () = 3 : sieve 3 [] (prs ())
		sieve x fs (p:ps) = [i*2 + x | (i,True) <- assocs a] ++ sieve (p*p) fs2 ps
			where
			q     = (p*p-x)`div`2
			fs2   = (p,0) : [(s, rem (y-q) s) | (s,y) <- fs]
			a     :: UArray Int Bool
			a     = accumArray (\ b c -> False) True (1,q-1) [(i,()) | (s,y) <- fs, i <- [y+s, y+s+s..q]]

-- https://projecteuler.net/problem=3