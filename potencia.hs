potencia :: Int -> Int -> Int
potencia a b
  | b > 0 = a*(potencia a (b-1))
  | b == 0 = 1

main = print $ potencia 2 10
