--
-- FINISH
--

data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 52 (No 32 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x
    | (n == x) = True
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

limiteSup :: Int
limiteSup = 1000 --Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup
minimoElemento (No n esq dir) =
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))

-- /// A ///
ocorrenciasElemento ::  Arvore -> Int -> Int
ocorrenciasElemento Null _ = 0
ocorrenciasElemento (No n esq dir) x
    | (n == Nil) = x
    | otherwise = (ocorrenciasElemento minhaArvore esq) || (ocorrenciasElemento minhaArvore dir)
ocorrenciasElemento (No n esq dir) x
    | (n == x) = x + ocorrenciasElemento minhaArvore 0
    | otherwise = ocorrenciasElemento minhaArvore 0

-- /// B ///
-- maioresQueElemento ::  Arvore -> Int -> Int
-- maioresQueElemento ::

main = do
    print (somaElementos minhaArvore)
    print (buscaElemento minhaArvore 30)
    print (buscaElemento minhaArvore 55)
    print (minimoElemento minhaArvore)
    print (ocorrenciasElemento minhaArvore 0)