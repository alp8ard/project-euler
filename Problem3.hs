{-
https://projecteuler.net/problem=3
-}
findTrue :: Num a => (a -> a -> Bool) -> a -> [a] -> a
findTrue _ _ [] = 0
findTrue f a (x:xs) 
    | f a x == True = x
    | otherwise = findTrue f a xs

factor :: Integer -> [Integer]
factor x = if y == 0 then [x] else y : factor (div x y)   
    where y = findTrue (\x y -> rem x y == 0) x (takeWhile (<= (floor(sqrt (fromIntegral(x))))) primes)

primes = 2:[x | x <- [3..], findTrue (\x y -> rem x y == 0) x (takeWhile (<= (floor(sqrt (fromIntegral(x))))) primes) == 0 ] :: [Integer]
main = putStrLn(show ans3)
ans3 = factor inNum
inNum = 600851475143 
