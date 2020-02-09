/* Chapter 1 - Excercise 8
 * 
 * Define a function MinOfList that calculates the smallest element of a list.
 * 
 * Optionally I tried to generalize the solution for this Ex 8 and 7,
 * by use of higher order functions.
 * Aka instead of creating a max_from_list and min_from_list,
 * we only have one function which takes a comparator function
 * as second argument.
 */
module ex8
import StdEnv

my_max :: Int Int -> Int
my_max a b
  | a > b = a
  | b > a = b
          = a

my_min :: Int Int -> Int
my_min a b
  | a > b = b
  | b > a = a
          = a

pick_from_list :: [Int] (Int Int -> Int) -> Int
pick_from_list [] comp = 0
pick_from_list [x] comp = x
pick_from_list [x:y] comp = comp x restpicked
  where
    restpicked = pick_from_list y comp

Start = [pick_from_list thelist my_min, pick_from_list thelist my_max]
  where thelist = [0,1,2,3]