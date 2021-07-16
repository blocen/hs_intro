-- Tail recursion corresponds to loops.

repeatString n str = repeatHelper n str ""

-- repeatHelper n str result =
--   if (n == 0)
--     then result
--     else repeatHelper (n -1) str (result ++ str)

repeatHelper 0 _ result = result
repeatHelper n str result = repeatHelper (n -1) str (result ++ str)

-- 

-- -- fib n
-- fib :: Int -> Int
-- fib 1 = 1
-- fib 2 = 2
-- fib n = fib (n - 2) + fib (n - 1)

-- -- fibonacci numbers, fast version
fib :: Integer -> Integer
fib n = fib' 0 1 n

fib' :: Integer -> Integer -> Integer -> Integer
fib' a b 1 = b
fib' a b n = fib' b (a+b) (n-1)
