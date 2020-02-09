/* Chapter 1 - Excercise 3
 * 
 * Define the function isum :: Int -> Int which adds the digits of its argument. So,
 * isum 1234 = 10
 * isum 0 = 0
 * isum 1001 = 2
 * You may assume that isum is applied to an argument which is not negative.
 */
 
module ex3
import StdEnv

isum :: Int -> Int
isum x
  | x > 0 = (x rem 10) + isum(x/10)
          = 0

Start = [isum 1234, isum 0, isum 1001]