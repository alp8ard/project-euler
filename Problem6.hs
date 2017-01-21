{-
https://projecteuler.net/problem=6
-}
main = putStrLn(show ans6)
ans6 = (sum [1..100])^2 - (sum [x^2 | x <- [1..100]])