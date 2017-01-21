{-
https://projecteuler.net/problem=9
-}
main = putStrLn(show ans9)
ans9 = head [  (a * b * (floor (sqrt(fromInteger(a^2 + b^2))))) | a <- [1..1000], b <- [1..1000], 
                 a < b, 
                 (floor (sqrt(fromInteger(a^2 + b^2))))^2 == (a^2 + b^2),
                 (floor (sqrt(fromInteger(a^2 + b^2)))) + b + a == 1000
            ]
