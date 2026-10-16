
module Ejercicio1 where

-- 1. Concatenar dos listas: [1,2,3] y [4,5]
listaConcatenada :: [Int]
listaConcatenada = [1,2,3] ++ [4,5]

{-
 3 - 6. Consulta de tipos en GHCi usando :t
 :t True         --> True :: Bool
 :t "Hola mundo" --> "Hola mundo" :: [Char]
 :t [1,2,3]      --> [1,2,3] :: Num a => [a]
-}

{-
 7. Pregunta teórica:
 ¿Qué significa que Haskell sea un lenguaje fuertemente tipado y evaluado perezosamente?

 - Fuertemente tipado (Strongly Typed): Cada expresión tiene un tipo de dato
   bien definido en compilación. No permite operaciones inválidas entre tipos
   incompatibles ni realiza conversiones implícitas.

 - Evaluación perezosa (Lazy Evaluation): Las expresiones no se evalúan
   hasta que su resultado sea estrictamente necesario. Esto permite trabajar
   con estructuras de datos infinitas sin agotar la memoria.
-}

-- 8. Definición de funciones:

-- a. doble :: Int -> Int
doble :: Int -> Int
doble x = x * 2

-- b. esMayorEdad :: Int -> Bool
esMayorEdad :: Int -> Bool
esMayorEdad edad = edad >= 18

-- c. areaCirculo :: Float -> Float
areaCirculo :: Float -> Float
areaCirculo radio = pi * (radio ^ 2)

{-
 Pregunta de reflexión: ¿Qué diferencias encuentras entre los tipos Int y Float?
 - 'Int' representa números enteros de precisión fija (datos discretos y conteos exactos).
 - 'Float' representa números en coma flotante de precisión simple (magnitudes continuas con decimales).
-}
