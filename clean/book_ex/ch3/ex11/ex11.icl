/* Chapter 3 Excercise 11
 * Prove Proof that fib(n)>= n for all n>=2 .
 * 
 * fib :: Int -> Int
 * fib 0 = 1
 * fib 1 = 1
 * fib n = fib (n-1) + fib (n-2)
 * 
 * Let P(n) = "fib(n)>=n"
 *
 * Base Case n == 2
 * fib(2)
 *  = fib (1) + fib (0) // Third definition of (fib)
 *  = 1+1
 *  =2    
 *   2>=2
 * Base Case n==3
 * fib(3)
 *  = fib (2) + fib (1)           // Third definition of (fib)
 *  = fib (2) + 1 // Second definition of (fib)
 *  = fib (1) + fib (0) + 1 // Third definition of (fib)
 *  = 1 + fib (0) + 1 // Second definition of (fib)
 *  = 1 + 1 + 1 // First definition of (fib)
 *  = 3
 *  =3 
 *   3>=3
 * Inductive Step
 * assume P(n) "fib(n)>=n"
 * assume P(n-1) "fib(n-1)>=n-1"
 * show P(n+1) "fib(n+1)>=n+1"
 * fib(n+1) >= n+1 
 * fib(n+1)=fib(n)+fib(n-1)>=n+1 // Third definition of fib
 * fib(n+1)=fib(n)+fib(n-1)>=n+n-1>=n+1 // I.H.
 * fib(n+1)=fib(n)+fib(n-1)>=2n-1>=n+1 //
 *
 */