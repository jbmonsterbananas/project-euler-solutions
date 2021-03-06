import Data.Array.Unboxed

-- Take the sum of all numbers from 'getPrimes', while they are less than 2 million --
ans = sum $ takeWhile (<2000000) getPrimes

-- Prime Sieve --
getPrimes = 2 : prs ()
	where
		prs () = 3 : sieve 3 [] (prs ())
		sieve x fs (p:ps) = [i*2 + x | (i,True) <- assocs a] ++ sieve (p*p) fs2 ps
			where
			q     = (p*p-x)`div`2
			fs2   = (p,0) : [(s, rem (y-q) s) | (s,y) <- fs]
			a     :: UArray Int Bool
			a     = accumArray (\ b c -> False) True (1,q-1) [(i,()) | (s,y) <- fs, i <- [y+s, y+s+s..q]]

-- https://projecteuler.net/problem=10