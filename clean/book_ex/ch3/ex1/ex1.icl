/* Chapter 3 - Excercise 1
 * 
 * Define a function CountOccurences 
 * that counts the number of times a given element is
 * occuring in a given list.
 * CountOccurences :: a [a] -> Int | == a
 */
module ex1
import StdEnv

CountOccurences1 :: a [a] -> Int | == a
CountOccurences1 y [] = 0
CountOccurences1 y [x]
  | x == y = 1
           = 0
CountOccurences1 y [x:xs]
  | x == y = 1 + CountOccurences1 y xs
           = CountOccurences1 y xs
           
CountOccurences2 :: a [a] -> Int | == a
CountOccurences2 x l = length ( filter ((==)x) l )

Start = [ CountOccurences1 1 [1,2,3,4,1,2],
          CountOccurences1 1 [1],
          CountOccurences1 1 [],
          CountOccurences2 1 [1,2,3,4,1,2],
          CountOccurences2 1 [1],
          CountOccurences2 1 []]
