/* Chapter 3 - Excercise 3
 * 
 * Equality on tuples can be defined as:
 * (==) (a,b) (c,d) = a == c && b == d
 * Although the equality operator is also applied in the right-hand side expression this
 * function is actually not recursive.
 * What is the difference between this operator definition and the recursive definition of
 * equality for lists in Section 3.1.2?
 *
 * (==) infix 4 :: [a] [a] -> Bool | == a
 * (==) [] [] = True
 * (==) [] [y:ys] = False
 * (==) [x:xs] [] = False
 * (==) [x:xs] [y:ys] = x==y && xs==ys
 */
module ex3
import StdEnv

/*
 * Let t0 = ((1,2),1)
 * Let t1 = ((1,2),1)
 * t0 == t1
 *  =  (==) ((1,2),1)((1,2),1)
 *  =  (&&) ( (==) (1,2) (1,2) ) (1 == 1)  // Notice (==) (1,2) (1,2)
 * The tuple (==) "gets called" again although not as explicitly as for lists
 */