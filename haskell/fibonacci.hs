import Data.List
import System.IO

fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]
fib2 = 1 : 1 : zipWith (+) fib (tail fib)
