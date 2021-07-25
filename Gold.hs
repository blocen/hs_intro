module Gold where

-- The golden ratio
phi :: Double
phi = (sqrt 5 + 1) / 2

polynomial :: Double -> Double
polynomial x = x ^ 2 - x - 1

f x = polynomial (polynomial x)

main = do
  -- print (polynomial phi)
  -- print (f phi)
  print (area 1)
  print (area 2)

-- area r = pi * rsquare
--   where
--     pi = 3.1415927
--     rsquare = r * r

area r =
  let pi = 3.1415927
      rsquare = r * r
   in pi * rsquare

greet :: String -> String -> String
greet "Finland" name = "Hei, " ++ name
greet "Italy" name = "Ciao, " ++ name
greet "England" name = "How do you do, " ++ name
greet _ name = "Hello, " ++ name

descr :: Integer -> String
descr 0 = "zero"
descr 1 = "one"
descr 2 = "an even prime"
descr n = "the number " ++ show n

-- using guards
describe :: Int -> String
describe n
  | n==2      = "Two"
  | even n    = "Even"
  | n==3      = "Three"
  | n>100     = "Big!!"
  | otherwise = "The number "++show n

-- -- case expression
-- describe :: Integer -> String
-- describe n = case n of 0 -> "zero"
--                        1 -> "one"
--                        2 -> "an even prime"
--                        n -> "the number " ++ show n


-- fact n
fact :: Int -> Int
fact n = if n <= 1 then 1 else n * fact (n - 1)
-- fact 1 = 1
-- fact n = n * fact (n-1)

-- fact using guards
factorial :: Int -> Int
factorial n
  | n<0       = -1
  | n==0      = 1
  | otherwise = n * factorial (n-1)

-- fib n
fib :: Int -> Int
fib 1 = 1
fib 2 = 2
fib n = fib (n - 2) + fib (n - 1)
