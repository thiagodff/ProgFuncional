fazShift :: Int -> [Int] -> [Int]
fazShift 0 x = x
fazShift b (a:x) = fazShift (b-1) x

shiftando :: Int -> [Int] -> [Int]
shiftando 0 x = []
shiftando b (a:x) = [a] ++ shiftando (b-1) x

shift :: Int -> [Int] -> [Int]
shift b x = (fazShift b x) ++ (shiftando b x)


main = print $ shift 3 [1,5,6,7,3,4,1]
