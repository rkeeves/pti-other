/* Chapter 3 Excercise 13
 * Prove that x ++ (y ++ z) = (x ++ y) ++ z  for any x,y,z lists
 * 
 * (++) infixr 5 :: [a] [a] -> [a]
 * (++) [] ys = ys
 * (++) [x:xs] ys = [x:xs++ys]
 *
 * Let P(xs) = "forall ys, zs ( xs ++ (ys ++ zs) = (xs ++ ys) ++ zs )"
 * 
 * Base Case
 *  P([]) = "forall ys, zs ( [] ++ (ys ++ zs) = ([] ++ ys) ++ zs )"
 *  LHS
 *  [] ++ (ys ++ zs)
 *   = ys ++ zs           // first definition of (++)
 *   = ([] ++ ys) ++ zs   // first definition of (++) backwards
 * 
 * Inductive Step
 * P(as) => P(a:as)
 * assume P(as) is "forall us, ws ( as ++ (us ++ ws) = (as ++ us) ++ ws )"
 * show P(a:as) is "forall ys, zs ( a:as ++ (ys ++ zs) = (a:as ++ ys) ++ zs )"
 *   a:as ++ (ys ++ zs)        //
 *   = a:(as++(ys ++ zs))      // Second definition of (++)
 *   = a:((as ++ ys) ++ zs)    // I.H.
 *   = ( a:(as ++ ys) ) ++ zs  // Second definition of (++) backwards
 *   = ( a:as ++ ys ) ++ zs    // Second definition of (++) backwards
 */