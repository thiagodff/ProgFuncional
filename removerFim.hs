inverteMatriz :: [Int] -> [Int]
inverteMatriz (a:x) = if x/=[] then inverteMatriz x ++ [a] else [a]

removeFim :: Int -> [Int] -> [Int]
removeFim 0 x = x;
removeFim b (a:x) = removeFim (b-1) x

removerFim :: Int -> [Int] -> [Int]
removerFim b x = inverteMatriz(removeFim b (inverteMatriz x))

main = print $ removerFim 2 [1,2,3,4,5,6]
