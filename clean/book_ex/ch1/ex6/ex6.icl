/* Chapter 1 - Excercise 6
 * 
 * Define a function min that has two arguments that delivers the minimum of the two.
 */
 
module ex6
import StdEnv

my_min :: Int Int -> Int
my_min a b
  | a > b = b
  | b > a = a
          = a

Start = [my_min 1 2, my_min 20 10, my_min 100 100]