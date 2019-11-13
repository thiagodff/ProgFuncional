inverteMatriz :: [Int] -> [Int]
inverteMatriz (a:x) = if x/=[] then inverteMatriz x ++ [a] else [a]

verificaPalindromo :: [Int] -> [Int] -> Bool
verificaPalindromo (a:x) (b:z)
  | z /= [] = if a==b then verificaPalindromo x z else False
  | z == [] = if a==b then True else False

palindromo :: [Int] -> Bool
palindromo x = verificaPalindromo x (inverteMatriz x)

main = print $ palindromo [1,2,3,4,3,2,1]
