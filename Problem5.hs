{-
https://projecteuler.net/problem=5
-}
findTrue :: Num a => (a -> a -> Bool) -> a -> [a] -> a
findTrue _ _ [] = 0
findTrue f a (x:xs) 
    | f a x == True = x
    | otherwise = findTrue f a xs

primes = 2:[x | x <- [3..], findTrue (\x y -> rem x y == 0) x (takeWhile (<= (floor(sqrt (fromIntegral(x))))) primes) == 0 ] :: [Integer]

main = putStrLn(show ans5)
ans5 = product [ x^(floor( logBase (fromInteger(x)) (fromInteger(upToNum)) )) | x <- takeWhile ( <= upToNum) primes]
upToNum = 20