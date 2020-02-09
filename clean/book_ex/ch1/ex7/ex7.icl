/* Chapter 1 - Excercise 7
 * 
 * Define a function MaxOfList that calculates the largest element of a list.
 */
module ex7
import StdEnv

my_max :: Int Int -> Int
my_max a b
  | a > b = a
  | b > a = b
          = a

my_max_of_list :: [Int] -> Int
my_max_of_list [] = 0
my_max_of_list [x] = x
// Wasnt able to do below impl without where
// Was getting type errors if my_max(x my_max_of_list(y)) was used
my_max_of_list [x:y] = my_max x restmax
  where
    restmax = my_max_of_list(y)

Start = [my_max_of_list [0,1,2,3], my_max_of_list [0,-10,30,20,-30]]