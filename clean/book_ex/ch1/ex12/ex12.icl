/* Chapter 1 - Excercise 12
 *
 * Define a function Palindrome which checks whether a list of characters is a palindrome,
 * i.e. when you reverse the characters you should get the same list as the original.
 */
module ex12
import StdEnv

// From Excercise 11, Type was made polymorphic
// (i.e. we dont constrain it to Int type. Instead any List of Type 'ty'.)
my_rev :: [ty] -> [ty]
my_rev [] = []
my_rev [x] = [x]
my_rev [x,y] = [y,x]
my_rev [x:y] = my_rev y ++ [x]

my_is_palim :: [Char] -> Bool
my_is_palim ol = (ol == my_rev ol)

// Returns False if any test case fails.
Start = ls_expected == ls_actual
  with
       ls_actual =  [
         my_is_palim [],
         my_is_palim ['a'],
         my_is_palim ['a','a'],
         my_is_palim ['a','b','a'],
         my_is_palim ['a','b'],
         my_is_palim ['b','a','a'],
         my_is_palim ['b','b','a']
        ]
       ls_expected = [True,True,True,True,False,False,False]