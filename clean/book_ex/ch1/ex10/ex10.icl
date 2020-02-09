/* Chapter 1 - Excercise 10
 *
 * Define a function LastTwo that returns the last two elements of a list.
 */
module ex10
import StdEnv

my_last_two :: [Int] -> [Int]
// Didnt want to bother yet with err handling, so we use 0 as undefined
my_last_two [] = [0,0]
my_last_two [x] = [x,0]
my_last_two [x,y] = [x,y]
my_last_two [x:y] = my_last_two y

Start = [my_last_two [0,1,2,3,4,5], my_last_two []]