/* Chapter 3 - Excercise 7
 * 
 * Extend the set of operators on rational numbers with == and < .
 */
module ex7
import StdEnv

:: Q = { num :: Int , den :: Int}

QZero = {num = 0, den = 1}
QOne = {num = 1, den = 1}
QTwo = {num = 2, den = 1}
QHalf = {num = 1, den = 2}
QThird = {num = 1, den = 3}
Qquarter = {num = 1, den = 4}

simplify :: Q -> Q
simplify {num=n,den=d}
| d == 0 = abort "denominator of Q is 0!"
| d < 0 = {num = ~n / g, den = ~d / g}
| otherwise = {num = n / g, den = d / g}
where
  g = gcd n d

gcd :: Int Int -> Int
gcd x y = m_gcd (abs x) (abs y)
where
  m_gcd x 0 = x
  m_gcd x y = m_gcd y (x rem y)

mkQ :: x x -> Q | toInt x
mkQ n d = simplify {num = toInt n, den = toInt d}

instance * Q
where (*) q1 q2 = mkQ (q1.num*q2.num) (q1.den*q2.den)

instance / Q
where (/) q1 q2 = mkQ (q1.num*q2.den) (q1.den*q2.num)

instance + Q
where (+) q1 q2 = mkQ (q1.num * q2.den + q1.den * q2.num) (q1.den * q2.den)

instance - Q
where (-) q1 q2 = mkQ (q1.num * q2.den - q1.den * q2.num) (q1.den * q2.den)

instance toString Q
where
  toString q
  | sq.den==1= toString sq.num
  | otherwise= toString sq.num +++ "/" +++ toString sq.den
  where
    sq = simplify q

instance == Q
where 
  (==) q1 q2 = (sq1.num==sq2.num) && (sq1.den==sq2.den)
  where
    sq1 = simplify q1
    sq2 = simplify q2
    
instance < Q
where 
  (<) q1 q2 = (sq1.num*sq2.den) < (sq1.den*sq2.num)
    where
      sq1 = simplify q1
      sq2 = simplify q2
    
Start = QThird > QHalf



