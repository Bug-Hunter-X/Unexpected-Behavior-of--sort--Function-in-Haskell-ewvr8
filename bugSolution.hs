```haskell
import Data.List (sort)

-- Custom data type
data Person = Person { name :: String, age :: Int } deriving (Show, Eq)

instance Ord Person where
  (Person name1 age1) <= (Person name2 age2) = 
    if name1 == name2 then age1 <= age2 else name1 <= name2

main :: IO ()
main = do
  let people = [Person "Alice" 30, Person "Bob" 25, Person "Alice" 35]
  let sortedPeople = sort people
  print sortedPeople -- Output: [Person {name = "Alice", age = 30},Person {name = "Alice", age = 35},Person {name = "Bob", age = 25}]

  -- Handling mixed types (requires careful type checking)
  -- let mixedList = [1, "hello", 3.14]  -- This will result in a compile-time error
```