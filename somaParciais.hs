inverteMatriz :: [Int] -> [Int]
inverteMatriz (a:x) = if x/=[] then inverteMatriz x ++ [a] else [a]

soma :: [Int] -> Int
soma (a:x) = if x /= [] then a + soma x else a

somaParcial :: [Int] -> [Int]
somaParcial (a:x)
  | x /= [] = [(a + soma x)] ++ somaParcial x
  | x == [] = [a]

somaParciais :: [Int] -> [Int]
somaParciais x = inverteMatriz(somaParcial(inverteMatriz x))

main = print $ somaParciais [1,2,3,4]
