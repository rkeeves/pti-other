/* Chapter 1 - Excercise 2 
 *
 * Write a function that takes two arguments, 
 * say n and x, and computes their power, x n .
 * Use this to construct a function that squares its argument.
 * Write a program that computes the square of 128.
 */
module ex2
import StdEnv

my_pow :: Int Int -> Int
my_pow x n
  | n > 0 = x * my_pow x (n-1)
          = 1 
Start = my_pow 128 2