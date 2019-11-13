substituir :: Int -> Int -> [Int] -> [Int]
substituir a b (s:x)
  | a==s = [b] ++ (if x/=[] then substituir a b x else [])
  | s==s = [s] ++ (if x/=[] then substituir a b x else [])

main = print $ substituir 1 0 [1,2,1,3,1]
