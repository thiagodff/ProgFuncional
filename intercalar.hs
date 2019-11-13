intercalar :: [Int] -> [Int] -> [Int]
intercalar [] [] = []
intercalar a [] = a
intercalar [] b = b
intercalar (b:z) (a:x)
  | a <= b = [a] ++ intercalar (b:z) x
  | b <  a = [b] ++ intercalar z (a:x)


main = print $ intercalar [1,5,10] [2,7,9,20,25]
