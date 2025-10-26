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

unico :: [Int] -> [Int]

