/* Chapter 1 - Excercise 5
 * 
 * Define a function max with two arguments that delivers the maximum of the two.
 */
 
module ex5
import StdEnv

my_max :: Int Int -> Int
my_max a b
  | a > b = a
  | b > a = b
          = a

Start = [my_max 1 2, my_max 20 10, my_max 200 200]