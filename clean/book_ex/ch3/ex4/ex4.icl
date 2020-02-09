/* Chapter 3 - Excercise 4
 * 
 * Define the function flatten (see Section 3.1.2) in terms of foldr and ++ .
 */
module ex4
import StdEnv

my_flatten :: [[a]] -> [a]
my_flatten [] = []
my_flatten l = foldr (++) [] l

Start = my_flatten [[1,2,3],[4,5],[],[6]]