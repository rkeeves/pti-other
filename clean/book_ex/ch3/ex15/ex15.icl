/* Chapter 3 Excercise 15
 * Prove that rev (rev xs) = xs for every xs finite list.
 * 
 * (++) infixr 5 :: [a] [a] -> [a]
 * (++) [] ys = ys
 * (++) [x:xs] ys = [x:xs++ys]
 *
 * rev :: [t] -> [t] // Quadratic in the length of the argument list.
 * rev [] = []
 * rev [a:x] = rev x ++ [a]
 * 
 * Let P(xs) = "(rev(rev(xs))=xs)"
 * 
 * Base Case
 *  P([]) = "(rev(rev([]))=[])"
 *  rev(rev([]))
 *   = rev([])                 // First definition of (++)
 *   = []                      // First definition of (++)
 * 
 * Inductive Step
 * P(as) => P(a:as)
 * assume P(us) is "(rev(rev(us))=us)"
 * show P(a:as) is "(rev(rev(a:as))=x:as)"
 *  rev(rev(a:as))               //
 *   = rev(rev(as) ++ [a])       // Second definition of (rev)
 *   = rev([a]) ++ rev(rev(as))  // Chapter 3 Excercise 14
 *   = rev([a]) ++ as            // I.H.
 *   = (rev([]) ++ [a] ) ++ as   // Second definition of (rev)
 *   = ([] ++ [a] ) ++ as        // First definition of (rev)
 *   = [a] ++ as                 // First definition of (++)
 *   = a:as                      // Second definition of (++)
 */