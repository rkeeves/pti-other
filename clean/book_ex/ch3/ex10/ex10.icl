/* Chapter 3 Excercise 10 
 * Proof that abs (sign x) < 2 for all x using:
 * 
 * abs n
 * | n < 0 = ~n
 * | otherwise = n
 * 
 * sign x | x < 0 = -1
 * | x == 0 = 0
 * | x > 0 = 1
 *
 * 
 * Case x == 0 for abs (sign x) < 2
 *   RHS
 *     2
 *   LHS
 *     abs (sign x)
 *     =  abs (sign 0)  // x==0
 *     = abs (0)        // by definition of sign
 *     = 0              // by definition of abs
 *  LHS<RHS
 *
 * Case x < 0 for abs (sign x) < 2
 *   RHS
 *     2
 *   LHS
 *     abs (sign x)
 *     = abs (-1)       // by definition of sign
 *     = 1              // by definition of abs
 * LHS<RHS
 *
 * Case x > 0 for abs (sign x) < 2
 *   RHS
 *     2
 *   LHS
 *     abs (sign x)
 *     = abs (1)        // by definition of sign
 *     = 1              // by definition of abs
 * LHS<RHS
 *
 * x can be either x == 0 || x < 0 || x > 0
 * Therefore we covered all cases
 */