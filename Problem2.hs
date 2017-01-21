{-
https://projecteuler.net/problem=2
-}
fib = 1:1:[ (fib !! (x-1)) + (fib !! (x-2)) | x <- [2..] ]
main = putStrLn(show ans2)
ans2 = sum [x | x <- takeWhile ( <= 4000000 ) fib, rem x 2 == 0]