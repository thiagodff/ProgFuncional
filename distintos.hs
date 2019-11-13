verificaDistinto :: Int -> [Int] -> Bool
verificaDistinto b (a:x)
  | x==[] = if b == a then False else True
  | b == a = False
  | b /= a = verificaDistinto b x

distintos :: [Int] -> Bool
distintos (a:x)
  | x==[] = True
  | x/=[] = if verificaDistinto a x then distintos x else False

main = print $ distintos [3,2,1]
