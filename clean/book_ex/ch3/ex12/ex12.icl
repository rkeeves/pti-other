/* Chapter 3 Excercise 12
 * Proof that xs ++ [] = xs for any l list
 * 
 * (++) infixr 5 :: [a] [a] -> [a]
 * (++) [] ys = ys
 * (++) [x:xs] ys = [x:xs++ys]
 * 
 * Let P(xs) = "xs ++ [] == xs"
 *
 * Base Case xs == []
 *  P([]) 
 *   = [] ++ [] 
 *   = [] // First definition of (++)
 *
 * Inductive Step
 * P(as) => P(a:as)
 * assume P(as) is "as ++ [] = as"
 * show P(a:as) is "a:as ++ [] = a:as"
 *   a:as ++ []    //
 *    = a:(as++[]) // Second definition of (++)
 *    = a:as       // I.H.
 */