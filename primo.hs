encontraPrimo :: Int -> [Int] -> Bool
encontraPrimo b (c:x)
  | b <= 1 = False
  | b == c = True
  | (mod b c) == 0 = False
  | b /= c = encontraPrimo b x

primo :: Int -> Bool
primo a = encontraPrimo a [2, 3..] 

main = print $ primo 0
