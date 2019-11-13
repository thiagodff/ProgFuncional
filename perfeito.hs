verificaPerfeito :: Int -> [Int] -> Int
verificaPerfeito b (c:x)
  | b == c = 0
  | (mod b c) == 0 = c + verificaPerfeito b x
  | (mod b c) /= 0 = verificaPerfeito b x

perfeito :: Int -> Bool
perfeito a
  | verificaPerfeito a [1, 2..] == a = True
  | otherwise = False

main = print $ perfeito 28
