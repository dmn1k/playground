import Data.List
import System.IO

primeNumbers = [5,5,7,11]

favNums = 2 : 7 : 21 : 66 : []

many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycleList = take 10 (cycle [1,2,3])

listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]

divisBy9N13 = [x | x <- [1..500], mod x 13 == 0, mod x 9 == 0]

sortedList = sort [9, 1, 3, 4]

sumOfLists = zipWith (+) divisBy9N13 sortedList
listBiggerThan5 = filter (>5) primeNumbers

evensUpTo20 = takeWhile (<= 20) [2,4..]

multOfList = foldl (*) 1 [2,3,4,5]

pow3List = [3^n | n <- [1..10]]
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

bobSmith = ("Bob Smith", 52)
bobsName = fst bobSmith
bobsAge = snd bobSmith

names = ["Bob", "Mary", "Tom"]
addresses = ["123 Main", "234 North", "567 South"]
namesNAddress = zip names addresses


