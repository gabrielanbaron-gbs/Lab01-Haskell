
-- 1. Expresiones Lambda de un argumento

-- a. Reciba un número y retorne su doble:
dobleLambda :: Int -> Int
dobleLambda = \x -> x * 2

-- b. Calcular el cubo de un número:
cuboLambda :: Int -> Int
cuboLambda = \x -> x ^ 3

-- c. Dividir un número entre 2:
mitadLambda :: Fractional a => a -> a
mitadLambda = \x -> x / 2

-- d. Determinar si un número es positivo:
esPositivoLambda :: (Num a, Ord a) => a -> Bool
esPositivoLambda = \x -> x > 0

-- e. Determinar si un número pertenece al intervalo [10, 20]:
enIntervaloLambda :: (Num a, Ord a) => a -> Bool
enIntervaloLambda = \x -> x >= 10 && x <= 20


-- 2. Expresiones Lambda de dos argumentos

-- a. La suma de dos números:
sumaLambda :: Num a => a -> a -> a
sumaLambda = \x y -> x + y

-- b. La multiplicación de dos números:
multiplicacionLambda :: Num a => a -> a -> a
multiplicacionLambda = \x y -> x * y

-- c. La potencia entre dos números:
potenciaLambda :: (Num a, Integral b) => a -> b -> a
potenciaLambda = \x y -> x ^ y

-- d. El máximo entre dos números:
maximoLambda :: Ord a => a -> a -> a
maximoLambda = \x y -> if x >= y then x else y

-- e. Determinar si dos números son iguales:
sonIgualesLambda :: Eq a => a -> a -> Bool
sonIgualesLambda = \x y -> x == y
