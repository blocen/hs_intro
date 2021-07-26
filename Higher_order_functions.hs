
module Higher_order_functions where

applyTo1 :: (Int -> Int) -> Int
applyTo1 func = func 1

addThree :: Int -> Int
addThree x = x + 3
-- applyTo1 addThree

doTwice :: (a -> a) -> a -> a 
doTwice f x = f (f x)
-- doTwice addThree 1


-- map :: (a -> b) -> [a] -> [b]
-- map addThree [1,2,3]

-- a predicate that checks if a string is a palindrome
palindrome :: String -> Bool
palindrome str = str == reverse str

-- palindromes n takes all numbers from 1 to n, converts them to strings using show, and keeps only palindromes
palindromes :: Int -> [String]
palindromes n = filter palindrome (map show [1..n])

countAWords :: String -> Int
countAWords string = length (filter startsWithA (words string))
  where startsWithA s = head s == 'a'

  
  