{-
https://projecteuler.net/problem=4
-}
dRev :: String -> String 
dRev xs 
    | length xs <= 1 = xs
    | otherwise = [ (xs !! x) | x <- [(length(xs)-1),(length(xs)-2)..0] ]

main = putStrLn(show ans4)
ans4 = maximum [ x*y | x <- [100..999], y <- [100..999], show (x*y) == dRev ( show(x*y))]
