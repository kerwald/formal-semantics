-- exercicio 1

osQuatroSaoIguais :: Int -> Int -> Int -> Int -> Bool
osQuatroSaoIguais a b c d = ( a == b ) && ( b == c ) && ( c == d )

-- exercicio 2

quantosSaoIguais :: Int -> Int -> Int -> Int
quantosSaoIguais a b c
| ( a == b ) && ( b == c ) = 3
| ( a /= b ) && ( b /= c ) && ( a /= c ) = 0
| otherwise = 2

-- exercicio 3

todosDiferentes :: Int -> Int -> Int -> Bool
todosDiferentes a b c = ( a /= b ) && ( b /= c ) && ( a /= c )

-- no exercicio 4 precisa acrescentar a 3 verificação n/=p ficando
-- todosDiferentes n m p = ( ( n/=m ) && ( m/=p ) && ( n /= p ) )

-- exercicio 5

quantosSaoIguais2 :: Int -> Int -> Int -> Int
quantosSaoIguais2 a b c
| tresIguais a b c = 3
| todosDiferentes a b c = 0
| otherwise = 2

-- exercicio 6

elevaDois :: Int -> Int
elevaDois a = a*a

-- exercicio 7

elevaQuatro :: Int -> Int
elevaQuatro a = elevaDois a * elevaDois a

-- exercicio 8

vendaTotal :: Int -> Int
vendaTotal a
    | a == 0 = vendas( 0 )
    | otherwise = vendas(a) + vendaTotal( a-1 )


