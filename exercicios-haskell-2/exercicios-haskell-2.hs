--para rodar o codigo
--ghci
--ghci> :l exercicios-haskell-2.hs

somaLista :: [Int]->Int
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs

multDois :: [Int] -> [Int]
multDois [] = []
multDois (x:xs) = 2*x : multDois xs

--exercicio 1

multLista :: Int -> [Int] -> [Int]
multLista a [] = []
multLista a (x:xs) = a*x : multLista a xs

--exercicio 2

elemento :: Int -> [Int] -> Bool
elemento a [] = False
elemento a (x:xs)
    | a == x = True
    | a /= x = elemento a xs

--exercicio 3

conta :: Int -> [Int] -> Int
conta a [] = 0
conta a (x:xs)
    | a == x = 1 + conta a xs
    | a /= x = 0 + conta a xs

--exercicio 4

contaMaiores :: Int -> [Int] -> Int
contaMaiores a [] = 0
contaMaiores a (x:xs)
    | a > x = 1 + contaMaiores a xs
    | a <= x = 0 + contaMaiores a xs

--exercicio 5

maiores :: Int -> [Int] -> [Int]
maiores a [] = []
maiores a (x:xs) 
    | a <= x = x : maiores a xs
    | otherwise = maiores a xs

--exercicio 6

geraLista :: Int -> Int -> [Int]
geraLista 0 b = []
geraLista a b = b : geraLista (a-1) b

--exercicio 7

addFim :: Int -> [Int] -> [Int]
addFim a [] = [a]
addFim a (x:xs) = x : addFim  a xs

--exercicio 8

join :: [Int] -> [Int] -> [Int]
join [] [] = []
join [] (x:xs) = x : join [] xs
join (b:bs) (x) = b : join bs x

--exercicio 9

inverte :: [Int] -> [Int]
inverte [] = []
inverte ( x:xs ) = addFim x  ( inverte xs )