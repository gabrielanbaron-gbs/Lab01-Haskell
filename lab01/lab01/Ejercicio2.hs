module Ejercicio2 where

{-
 1. Operaciones básicas sobre listas en GHCi:
 head [10,20,30,40] --> 10         (Obtiene el primer elemento)
 tail [10,20,30,40] --> [20,30,40]   (Obtiene la lista sin el primer elemento)
 take 3 [1..10]     --> [1,2,3]    (Toma los primeros 3 elementos)
 drop 4 [1..10]     --> [5,6,7,8,9,10] (Elimina los primeros 4 elementos)
 length [1,2,3,4,5] --> 5         (Calcula la cantidad de elementos)

 Pregunta: ¿Qué hace la expresión [1..10] y cómo se relaciona con la evaluación perezosa?
 La expresión [1..10] crea una lista con el rango del 1 al 10.
 Se relaciona con la evaluación perezosa porque Haskell genera los elementos únicamente
 a medida que los necesita (por ejemplo, al hacer 'take 3 [1..10]' solo genera los primeros 3).
-}

-- 2. Definición de funciones sobre listas

-- a. primerElemento :: [a] -> a
-- Devuelve el primer elemento de la lista usando patrones (pattern matching).
-- La variable anónima '_' ignora el resto de la lista.
primerElemento :: [a] -> a
primerElemento (x:_) = x
primerElemento []    = error "La lista está vacía"

-- b. productoLista :: [Int] -> Int
-- Calcula el producto de todos los elementos de la lista de forma recursiva.
productoLista :: [Int] -> Int
productoLista []     = 1
productoLista (x:xs) = x * productoLista xs

-- c. eliminarNegativos :: [Int] -> [Int]
-- Devuelve una lista con solo los números mayores o iguales a 0.
eliminarNegativos :: [Int] -> [Int]
eliminarNegativos [] = []
eliminarNegativos (x:xs)
    | x >= 0    = x : eliminarNegativos xs
    | otherwise = eliminarNegativos xs

-- d. Reto: invertir :: [a] -> [a]
-- Invierte una lista sin usar la función reverse.
invertir :: [a] -> [a]
invertir []     = []
invertir (x:xs) = invertir xs ++ [x]
