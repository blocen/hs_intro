module Lists where

l :: [Int]
l = [0,1,2,3,4]
ll = [1..4]

-- [True,True,False] :: [Bool]
-- ["Moi","Hei"] :: [String]
-- [] :: [a]                   -- more about this later
-- [[1,2],[3,4]] :: [[Int]]    -- a list of lists
-- [1..7] :: [Int]             -- range syntax, value [1,2,3,4,5,6,7]

-- head :: [a] -> a            -- returns the first element
-- tail :: [a] -> [a]          -- returns everything except the first element
-- init :: [a] -> [a]          -- returns everything except the last element
-- take :: Int -> [a] -> [a]   -- returns the n first elements
-- drop :: Int -> [a] -> [a]   -- returns everything except the n first elements
-- (++) :: [a] -> [a] -> [a]   -- lists are catenated with the ++ operator
-- (!!) :: [a] -> Int -> a     -- lists are indexed with the !! operator
-- reverse :: [a] -> [a]       -- reverse a list
-- null :: [a] -> Bool         -- is this list empty?
-- length :: [a] -> Int        -- the length of a list

-- Type inference is really powerful. It uses the simple 
-- process of unification to get us types for practically any Haskell expression.
f xs ys = [head xs, head ys]
g zs = f "Moi" zs
-- *Lists> :t f
-- f :: [a] -> [a] -> [a]
-- *Lists> :t g
-- g :: [Char] -> [Char]

-- In a type like [Char] we call Char a type parameter. A type like the list type that needs a type parameter is called a parameterized type.

-- The fact that a function like head can be used with many different types of arguments is called polymorphism. The head function is said to be polymorphic. There are many forms of polymorphism, and this Haskell form that uses type variables is called parametric polymorphism.


