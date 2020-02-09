/* Chapter 3 Excercise 16
 * Prove that foldl f ys x = foldl f [] x ++ ys for all x, ys
 *   where f = (\xs x -> [x:xs])
 *
 * foldl::(a -> (b -> a)) !a ![b] -> a
 * foldl op e [] = e
 * foldl op e [x:xs] = foldl op (op e x) xs
 *
 * Let P(x) = "forall ys foldl f ys x = foldl f [] x ++ ys"
 *
 * Base Case 
 * P([]) = "forall ys foldl f ys [] = foldl f [] [] ++ ys"
 *   LHS
 *     foldl f ys []
 *     = ys // First definition of (foldl)
 *   RHS 
 *     foldl f [] [] ++ ys
 *     = [] ++ ys // First definition of (foldl)
 *     = ys  // Property of (++)
 *
 * Inductive Step
 * P(as) => P(a:as)
 * assume P(as) = "forall ys foldl f ys as = foldl f [] as ++ ys"
 * show P(a:as) = "forall ys foldl f ys [a:as] = foldl f [] [a:as] ++ ys"
 *  foldl f ys [a:as]
 *    = foldl f (f ys a) as  // Second definition of (foldl)
 *    = foldl f ([a:ys]) as // Lambda reduction
 *    = ( foldl f [] as ) ++ ([a:ys]) // I.H.
 *    = ( foldl f [] as ) ++ ([a]++ys) // (++)
 *    = ( ( foldl f [] as ) ++ [a] ) ++ys  // Property of (++)
 *    = ( foldl f [a] as ) ++ ys // I.H.
 *    = ( foldl f (f [] a) as ) ++ ys  //  Construct the "[a]" from a lambda 
 *    = ( foldl f [] [a:as] ) ++ ys // Second definition of (foldl) backwards
 */