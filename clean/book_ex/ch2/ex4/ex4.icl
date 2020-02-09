/* Chapter 2 - Excercise 4
 * 
 * Define the function mapfun that applies a list of functions to its second argument re-
 * turning the results of these function applications into a list. So, e.g.
 * mapfun [f,g,h] x = [f x, g x, h x]
 */
module ex4
import StdEnv

mapfun :: [t->t] t -> [t]
mapfun [] x = [x]
mapfun [f] x = [f(x)]
mapfun [f:fr] x = [f(x)] ++ mapfun fr x
                   
Start =  mapfun fl 4
  where
    fl = [(\x->2*x*x*x+4*x*x+8*x),(\x->6*x*x+8*x+8),(\x->12*x+8)]