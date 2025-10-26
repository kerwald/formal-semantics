-- para rodar o codigo
-- ghci
-- :l extra-exercicios-haskell-2.hs

-- exercicio 1

membro :: Int -> [Int] -> Bool
membro a [] = False
membro a (x:xs)
    | a == x = True
    | otherwise = membro a xs

-- exercicio 2

membroNum :: Int -> [Int] -> Int
membroNum a [] = 0
membroNum a (x:xs)
    |   a == x = 1 + membroNum a xs
    |   otherwise = membroNum a xs

-- exercicio 3

membro2 :: Int -> [Int] -> Bool
membro2 a (x)
    | membroNum a x > 0 = True
    | otherwise = False

-- exercicio 4

removeNum :: Int -> [Int] -> [Int]
removeNum a [] = []
removeNum a (x:xs)
    | a == x = removeNum a xs
    | otherwise = x : removeNum a xs

unico :: [Int] -> [Int]
unico [] =  []
unico (x:xs)
    | membroNum x xs /= 0 = unico ( removeNum x xs )
    | otherwise = x : unico xs

-- exercicio 5

maiores :: Int -> [Int] -> [Int]
maiores a [] = []
maiores a (x:xs)
    | x > a = x : maiores a xs
    | otherwise = maiores a xs

menores :: Int -> [Int] -> [Int]
menores a [] = []
menores a (x:xs)
    | x <= a = x : menores a xs
    | otherwise = menores a xs


quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort (x:xs) = quickSort (menores x xs)
                    ++ [x] ++
                    quickSort (maiores x xs)