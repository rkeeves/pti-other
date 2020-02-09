/* Chapter 1 - Excercise 11
 *
 * Define a function Reverse that reverses the elements in a list.
 */
module ex11
import StdEnv

my_rev :: [Int] -> [Int]
my_rev [] = []
my_rev [x] = [x]
my_rev [x,y] = [y,x]
my_rev [x:y] = my_rev y ++ [x]

Start = [my_rev [0,1,2,3,4,5], my_rev [] ]