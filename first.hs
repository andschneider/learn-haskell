{-|
 - My first Haskell file
 -
 - To run:
 - 1. Start `ghci`
 - 2. Load this file: `:l first`
-}

-- my first function :)
doubleMe x = x + x

--  bad: doubleUs x y = x * 2 + y * 2
--  use doubleMe instead
doubleUs x y = doubleMe x + doubleMe y

-- in Haskell the `else` part is mandatory in `if` statements
doubleSmallNumber x = if x > 100
                        then x
                        else x*2

{-|
 “Since every function has to return something, this implies that every `if` has
 to have a corresponding else. Thus, Haskell's `if` is an _expression_ that must
 return a value, and not a statement."
 -}

-- use ' to denote a _strict_ version of a function, or a slightly modified
-- version of a function or variable with a similar name
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

--
-- Lists
--

-- lists are _homogeneous_
l = [1,2,3]

-- concatenation is done using the ++ operator, which always takes two lists as
-- arguments (even if you're only adding a single element)
l' = l ++ [4,5,6]

-- strings are just lists of characters
wl = "hello" ++ " " ++ "world"

-- _cons_ operator adds to the beginning of a list
l'' = 0:l
-- the first argument to the : operator always needs to be a single item of the
-- same type as the values in list being added to

-- access list elements with the !! operator
e = l !! 0

-- more list options:
-- head - returns the first element
-- tail - returns everything but the head
-- last - returns the last element
-- init - returns everything but the last
-- null - checks if a list is empty (return True, otherwise return False)
-- length - returns the length of the list
-- reverse - reverses the list
-- take - extracts the specified number of elements from the beginning of a list
-- drop - removes the specified amount of elements from the beginning of a list
-- elem - checks if the item is in the list (4 `elem` [3,4,5,6] -> True)

--
-- Ranges
-- 

-- create a list with all the natural numbers from 1 to 20
r = [1..20]
alpha = ['a'..'z']

-- specify a step
r' = [2,4..20]

-- make an infinite list by not specifying an upper limit
r'' = [13,26..]

-- take 15 r'' (gets the first 15 elements)
-- since Haskell is _lazy_, it won't evaluate the entire infinite list
-- immediately. (this seems similar to a generator in Python)

--
-- List comprehensions
--

-- this is the statement "take all the natural numbers less than or equal to 10,
-- multiply each one by 2, and use these results to create a new set"
lc = [x*2 | x <- [1..10]]

-- add predicates at the end of the list comprehension
lc' = [x*2 | x <- [1..10], x*2 >= 12]

-- all numbers from 50 to 100 whose remainder when divided by 7 is 3
lc'' = [ x | x <- [50..100], x `mod` 7 == 3]

-- you can include as many predicates as you want, separated by commas

--
-- Tuples
--

-- tuples are _heterogeneous_
t = (1,3)

-- storing data in pairs is very common, so there are some useful functions in
-- place to manipulate them:
-- `fst` returns the first component
-- `snd` returns the second component

-- zip: basically the same as Python
z = zip [1,2,3,4,5] [5,5,5,5,5] -- [(1,5),(2,5),(3,5),(4,5),(5,5)]

