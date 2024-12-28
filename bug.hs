```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- Output: [1,2,3,4,5]

  let zs = [5,4,3,2,1]
  let ws = sort zs
  print ws -- Output: [1,2,3,4,5]

  let str = "Hello"
  let strSorted = sort str
  print strSorted -- Output: [H, e, l, l, o]

  let emptyList = []
  let sortedEmptyList = sort emptyList
  print sortedEmptyList -- Output: []

  let someList = [1, 3, 2]
  let sortedList = sort someList
  print sortedList --Output: [1,2,3]
```