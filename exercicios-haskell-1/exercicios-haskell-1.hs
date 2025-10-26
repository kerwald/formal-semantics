--para rodar o codigo
--ghci
-- :l exercicios-haskell-1.hs

idade :: Int -- Um valor inteiro constante
idade = 17
testeIdade :: Bool -- Usa a definicao de
testeIdade = idade>=18 -- idade


quadrado :: Int -> Int -- funcao que eleva num
quadrado x = x * x -- ao quadrado
mini :: Int -> Int -> Int --funcao que mostra
mini a b --o menor entre
    | a <= b = a -- dois valores
    | otherwise = b

maiorIdade :: Int -> Bool
maiorIdade a = a >= 18

tresIguais :: Int -> Int -> Int -> Bool
tresIguais a b c = ( a == b ) && ( b == c )

-- exercicio 1

palidromo :: String -> Bool
palidromo s
    | reverse s == s = True
    | otherwise = False

-- exercicio 2

verificaTriangulo :: Int -> Int -> Int -> Bool
verificaTriangulo a b c = ( a + b ) > c && ( a + c ) > b && ( b + c ) > a

-- exercicio 3

sinal :: Int -> Int
sinal a
    | a < 0 = -1 -- numeros negativos deve se passar entre parenteses (-40) para a função
    | a >= 0 = 0

-- exercicio 4

menorTres :: Int -> Int -> Int -> Int
menorTres a b c
    | a < b && a < c = a
    | b < a && b < c = b
    | c < b && c < a = c

-- exercicio 5

potencia :: Int -> Int -> Int
potencia a 0 = 1
potencia a b = a * potencia a ( b - 1 )

