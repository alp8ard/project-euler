{-
https://projecteuler.net/problem=10
-}
findTrue :: Num a => (a -> a -> Bool) -> a -> [a] -> a
findTrue _ _ [] = 0
findTrue f a (x:xs) 
    | f a x == True = x
    | otherwise = findTrue f a xs

primes = 2:[x | x <- [3..], findTrue (\x y -> rem x y == 0) x (takeWhile (<= (floor(sqrt (fromIntegral(x))))) primes) == 0 ] :: [Integer]

main = putStrLn(show ans10)
ans10 = sum (takeWhile (< 2000000) primes) 
