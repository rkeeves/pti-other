/* Chapter 3 - Excercise 6
 * 
 * Describe the effect on the evaluation order of swapping x==y and xs==ys 
 * in the definition of == in Section 3.2.2.
 *
 * "(==) [x:xs] [y:ys] = x==y && xs==ys
 * If x==y delivers the value False, 
 * there is no need to compute xs==ys : 
 * the final result will always be False . 
 * This lazy behavior of the operator && is clear from its definition:
 * (&&) False x = False
 * (&&) True x = x
 * If the left argument is False, 
 * the value of the right argument is not needed in the computation of the result.
 */
/* We will recurse down the list even if it is unnecessary.
 *
 * Because we switched xs==ys to the left and x==y to the right,
 * we will descend down on the list always.
 * This can be inefficient.
 * Suppose that if x!=y holds, we could already give a solution,
 * without the need to analyze other values.
 */