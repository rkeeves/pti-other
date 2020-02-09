/* Chapter 2 - Excercise 2
 * 
 * Finite precision of reals. 
 * Execute the start expression given in section 2.4.2.
 * Rewrite the program such that it only prints the smallest number 
 * that is different from zero using the function until.
 */
module ex2
import StdEnv

Start = until (\x->(x/10.0)<=0.0) (\x->x/10.0) 1.0