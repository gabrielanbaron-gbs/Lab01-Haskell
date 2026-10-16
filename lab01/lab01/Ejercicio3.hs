

-- 1. Composición y funciones auxiliares

-- Funciones auxiliares para sumaCuadrados
cuadrado :: Int -> Int
cuadrado x = x * x

suma :: Int -> Int -> Int
suma x y = x + y

-- a. sumaCuadrados :: Int -> Int -> Int
-- Calcula la suma de los cuadrados de dos números combinando 'suma' y 'cuadrado'.
sumaCuadrados :: Int -> Int -> Int
sumaCuadrados x y = suma (cuadrado x) (cuadrado y)

-- Funciones auxiliares para dobleLista
duplicar :: Int -> Int
duplicar x = x * 2

-- b. dobleLista :: [Int] -> [Int]
-- Multiplica por 2 cada elemento de una lista usando map y la función duplicar.
-- La forma más simple e idiomática en Haskell es: map (*2)
dobleLista :: [Int] -> [Int]
dobleLista xs = map duplicar xs


-- 2. Definición por casos / Guardas / Recursión

-- a. clasificarNota :: Int -> String
-- Menor a 3 -> "Reprobado"
-- Entre 3 y 4 (menor que 4) -> "En recuperación"
-- Mayor o igual a 4 -> "Aprobado"
clasificarNota :: Int -> String
clasificarNota nota
    | nota < 3              = "Reprobado"
    | nota >= 3 && nota < 4 = "En recuperación"
    | otherwise             = "Aprobado"

-- b. fibonacci :: Int -> Int
-- Calcula el n-ésimo número de la sucesión de Fibonacci.
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n
    | n > 1     = fibonacci (n - 1) + fibonacci (n - 2)
    | otherwise = error "El número debe ser mayor o igual a 0"
