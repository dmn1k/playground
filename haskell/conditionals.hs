import Data.List
import System.IO

-- < > <= >= 00 /=
-- && || not

doubleEvenNumber y =
  if (mod y 2 /= 0)
    then y
    else y * 2

getClass :: Int -> String
getClass n = case n of
  5 -> "Go to Kindergarten"
  6 -> "Go to elementary school"
  _ -> "Go away"
