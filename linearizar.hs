linearizar :: [[Int]] -> [Int]
linearizar (a:x)
  | x /= [] = a ++ linearizar x
  | x == [] = a

main = print $ linearizar [ [1,2], [5], [0,4,2] ]
