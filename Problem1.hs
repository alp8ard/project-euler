{-
https://projecteuler.net/problem=1
-}
main = putStrLn(show ans1)
ans1 = sum [x | x <- [1..999], (rem x 3) == 0 || (rem x 5) == 0]