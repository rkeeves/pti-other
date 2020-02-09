/* Chapter 2 - Excercise 3
 * 
 * Counting days.
 * Write a function that given the current day and your date of birth 
 * determines how many days you have to wait for your birthday.
 */
module ex3
import StdEnv

:: Day :== Int
:: Month :== Int
:: Year :== Int

divisible :: Int Int -> Bool
divisible t n = t rem n == 0

leap :: Year -> Bool
leap y = divisible y 4 && (not(divisible y 100) || divisible y 400)

months :: Year -> [Int]
months y = [31, if (leap y) 29 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
 
days :: Day Month Year -> Int
days d m y
  = ( (y-1)*365 // days in full years before this year
  + (y-1)/4 // ordinary leap year correction
  - (y-1)/100 // leap year correction for centuries
  + (y-1)/400 // leap year correction for four centuries
  + sum (take (m-1) (months y)) // days in months of this year
  + d
  )
  
days_until_next_day_month :: Day Month Year Day Month -> Int
days_until_next_day_month cd cm cy bd bm
  | ((cm<bm) || ((cm==bm) && (cd<=bd)) ) = (days bd bm cy) - (days cd cm cy)
                                         = (days bd bm (cy+1)) - (days cd cm cy)
                                         
Start =  days_until_next_day_month 6 2 2020 18 11