verificaDisjuncao :: Int -> [Int] -> Bool
verificaDisjuncao b (a:x)
  | x /= [] = if b == a then True else verificaDisjuncao b x
  | x == [] = if b == a then True else False

disjuntas :: [Int] -> [Int] -> Bool
disjuntas (a:x) z
  | x /= [] = if verificaDisjuncao a z then False else disjuntas x z
  | x == [] = if verificaDisjuncao a z then False else True

main = print $ disjuntas [1,2,3] [5,4,6,0]
