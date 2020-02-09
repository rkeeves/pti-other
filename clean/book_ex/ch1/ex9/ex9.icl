/* Chapter 1 - Excercise 9
 *
 * Define a function Last that returns the last element of a list.
 */
module ex9
import StdEnv

my_last :: [Int] -> Int
// Didnt want to bother yet with err handling, so we use 0 as undefined
my_last [] = 0
my_last [x] = x
my_last [x:y] = my_last y

Start = [my_last [0,1,2,3,4,5], my_last [] ]