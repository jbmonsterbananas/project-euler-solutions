import Data.Char

str = "73167176531330624919225119674426574742355349194934969835203127745063262395783180169848018694788518438586156078911294949545950173795833195285320698747158523863096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"

-- Making use of Data.Char.digitToInt
a = map digitToInt str

-- I would like to come up with a more generalized solution,
-- say for a chain of length n. But, for now this is what I've got
ans = maximum [f x | x <- [0..((length a)-13)]]
	where f n = (a!!n) * (a!!(n+1)) * (a!!(n+2)) * (a!!(n+3)) * (a!!(n+4)) * (a!!(n+5)) * (a!!(n+6)) * (a!!(n+7)) * (a!!(n+8)) * (a!!(n+9)) * (a!!(n+10)) * (a!!(n+11)) * (a!!(n+12))

-- Longest one liner ever :D
ans2 = maximum [((a!!x) * (a!!(x+1)) * (a!!(x+2)) * (a!!(x+3)) * (a!!(x+4)) * (a!!(x+5)) * (a!!(x+6)) * (a!!(x+7)) * (a!!(x+8)) * (a!!(x+9)) * (a!!(x+10)) * (a!!(x+11)) * (a!!(x+12))) | x <- [0..((length a)-13)]] where a = (map Data.Char.digitToInt "73167176531330624919225119674426574742355349194934969835203127745063262395783180169848018694788518438586156078911294949545950173795833195285320698747158523863096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450")

-- https://projecteuler.net/problem=8