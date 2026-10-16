

{-
 1. Evaluación funcional y listas infinitas
 Dada la expresión: take 5 (map (*2) [1..])

 a. Predicción del resultado sin ejecutarlo:
 - [1..] genera una lista infinita de enteros positivos: [1, 2, 3, 4, 5, ...]
 - map (*2) multiplica cada elemento por 2: [2, 4, 6, 8, 10, ...]
 - take 5 toma los primeros 5 elementos de la lista transformada.
 - Resultado esperado: [2, 4, 6, 8, 10]

 b. Comparación al ejecutar en GHCi:
 Al ejecutar `take 5 (map (*2) [1..])` en la consola de Haskell,
 el resultado obtenido es exactamente `[2,4,6,8,10]`.

 Pregunta de análisis: ¿Por qué [1..] no causa un ciclo infinito?
 No causa un ciclo infinito gracias a la evaluación perezosa (Lazy Evaluation).
 Haskell evalúa los datos solo cuando se los necesita. Como 'take 5' únicamente
 requiere los primeros 5 elementos, la lista infinita produce esos 5 valores y
 detiene la evaluación sin intentar calcular el resto.
-}

-- 2. Análisis de evaluación paso a paso
misterio :: Int -> Int -> Int
misterio x y = if x > 10 then y * 2 else x + y

{-
 Evaluación paso a paso de: misterio (5+7) (4*3)

 Paso 1: Evaluar la expresión del primer argumento 'x' para comprobar la condición (x > 10).
         x = (5 + 7) = 12

 Paso 2: Reemplazar 'x' y evaluar la condición del 'if':
         12 > 10  --> True

 Paso 3: Como la condición es True, el 'if' elige la rama 'then':
         y * 2

 Paso 4: Evaluar 'y' (4 * 3) y multiplicar por 2:
         (4 * 3) * 2
         12 * 2
         --> 24
-}
