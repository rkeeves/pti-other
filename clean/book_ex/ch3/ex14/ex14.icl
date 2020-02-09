/* Chapter 3 Excercise 14
 * Prove that rev (x ++ y) = rev y ++ rev x for all x,y lists
 * 
 * (++) infixr 5 :: [a] [a] -> [a]
 * (++) [] ys = ys
 * (++) [x:xs] ys = [x:xs++ys]
 *
 * rev :: [t] -> [t] // Quadratic in the length of the argument list.
 * rev [] = []
 * rev [a:x] = rev x ++ [a]
 * 
 * Let P(xs) = "forall ys (rev (xs ++ ys) = rev ys ++ rev xs)"
 * 
 * Base Case
 *  P([]) = "forall ys (rev ([] ++ ys) = rev ys ++ rev [])"
 *  rev([] ++ ys)
 *   = rev(ys)                 // first definition of (++)
 *   = [] ++ rev(ys)           // Second definition of (++) backwards
 *   = rev(ys) ++ []           // We have proven this in Chapter 3 Excercise 13
 *   = rey(ys) ++ rev([])      // first definition of (rev) backwards
 * 
 * Inductive Step
 * P(as) => P(a:as)
 * assume P(as) = "forall us (rev (as ++ us) = rev us ++ rev as)"
 * show P(a:as) = "forall ys (rev (a:as ++ ys) = rev ys ++ rev a:as)"
 *  rev(a:as ++ ys)                 //
 *   = rev(a:(as++ys))              // Second definition of (++)
 *   = rev (as++ys) ++ [a]          // Second definition of (rev)
 *   = ( rev(ys)++ rev(as) ) ++ [a] // I.H.
 *   =  rev(ys) ++( rev(as)++[a])   // We have proven this in Chapter 3 Excercise 13
 *   = rev(ys)++rev(a:as)           // Second definition of (rev) backwards
 */