/* Chapter 3 - Excercise 2
 * 
 * Define the function MakeFrequenceTable
 * MakeFrequenceTable [a] -> [(a, Int)] | == a
 * That makes a frequence table. The table consists of a list of tuples. Each tuple consists
 * of an element from the original list and its frequency (percentage). E.g.
 * Frequentietabel [1,2,3,2] = [(1,25),(2,50),(3,25)]
 */
module ex2
import StdEnv

CountOccurences2 :: a [a] -> Int | == a
CountOccurences2 x l = length ( filter ((==)x) l )

MakeFrequenceTable:: [a] -> [(a, Int)] | == a
MakeFrequenceTable [] = []
MakeFrequenceTable l=:[x:xs] = [(x , CountOccurences2 x l) ] ++  MakeFrequenceTable ( filter (\z->z<>x) xs)

Start = MakeFrequenceTable [1,2,2,2,3,4,4,5,5,5,6,6,6,6]