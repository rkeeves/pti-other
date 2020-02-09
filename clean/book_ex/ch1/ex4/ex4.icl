/* Chapter 1 - Excercise 4
 * 
 * Use the function isum to check whether a number can be divided by 9.
 */
 
module ex4
import StdEnv

isum :: Int -> Int
isum x
  | x > 0 = (x rem 10) + isum(x/10)
          = 0
is_div_9 :: Int -> Bool
is_div_9 x = ((isum x) rem 9) == 0

Start = [is_div_9 99999999999, is_div_9 19999999999, is_div_9 123453]