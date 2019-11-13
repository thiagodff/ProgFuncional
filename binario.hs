calculaBinario :: Int -> [Int]
calculaBinario a
  | a/=0 = [mod a 2] ++ calculaBinario (div a 2)
  | a<=0 = []

inverteBinario :: [Int] -> [Int]
inverteBinario (a:x) = if x/=[] then inverteBinario x ++ [a] else [a]

binario :: Int -> [Int]
binario a = inverteBinario (calculaBinario a)

main = print $ binario 20
