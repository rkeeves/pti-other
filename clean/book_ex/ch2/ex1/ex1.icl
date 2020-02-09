/* Chapter 2 - Excercise 1
 * 
 * Combining operators. Define the function odd using the operators even, + and o 
 */
module ex1
import StdEnv

isOdd = isEven o ((+) 1)

Start = map isOdd [0..10]