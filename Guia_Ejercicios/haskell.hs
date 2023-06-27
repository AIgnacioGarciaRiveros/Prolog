-- Consignas alfa
{- Ejercicio 1
Dado dos números enteros A y B, implemente una función que retorne la división entera de ambos por el método de las restas sucesivas
-}

--dividir :: Int -> Int -> Int
--dividir dividendo divisor = if dividendo < divisor then 0 else  1 + dividir (dividendo---divisor) divisor
--main = print ( dividir 10 2)

{- Ejercicio 2
 hallar la potencia de un número
main = print ()
-}

--calcularPotencia :: Int -> Int -> Int
--calcularPotencia x 0 = 1
--calcularPotencia numero exponente = numero * calcularPotencia numero (exponente-1)

--main  = print ( calcularPotencia 5 0)
{- Ejercicio 3
Definir una función menor que devuelve el menor de sus dos argumentos enteros
-}

--obtenerMenor :: Int -> Int -> Int
--obtenerMenor pri seg = 
  --if pri < seg 
    --then pri 
  --else seg
--main = print (obtenerMenor 2 4)
 
-- menor a b = obtenerMenor a b


{- Ejercicio 4
Definir una función maximoDeTres que devuelve el máximo de sus argumentos enteros
-}
{-obtenerMaximo :: Int -> Int -> Int
obtenerMaximo num1 num2 =
  if num1 > num2
    then num1
  else num2

mayorDeTres :: Int->Int->Int->Int
mayorDeTres num1 num2 num3 = obtenerMaximo num3 (obtenerMaximo num1 num2)  
main = print (mayorDeTres 15 2 10)
-}

--Escribir una función que sume dos números enteros.
--suma x y = x + y

--main = print (suma 4 (-5) )


--Implementar una función que calcule el área de un círculo dado su radio.
--calcularArea :: Float -> Float
--calcularArea r = pi*r*r

--main = print( calcularArea 3.50)

--Definir una función que determine si un número es par o --impar.
--esPar :: Int -> Bool
--esPar x = mod x 2 == 0 
--esPar x =  x `mod` 2 == 0
--main = print (esPar 5)

--Escribir una función que calcule el factorial de un número.
--factorial :: Int -> Int
--factorial 1 = 1
--factorial x = x*factorial (x-1)

--main = print(factorial 10)

-- Implementar una función que invierta una lista.
--invertir :: [Int] -> [Int]
--invertir x = reverse x
--2DA solucion
{-lista = [1,2,3,4,5]
invertir :: [Int] -> [Int]
invertir [] = []
invertir (x:xs) = (invertir xs)++[x]
main = print(invertir lista)
-}
--Definir una función que determine si una lista está ordenada de forma ascendente.

ordenada :: [Int]->Bool
ordenada [] = True  --para cuando ?
ordenada [x] = True --para el 5 
ordenada (x:y:xs) = x <= y && ordenada (y:xs)
--main = print ( ordenada [2,3,4,5] )

--Escribir una función que cuente la cantidad de elementos en una lista.
--contar :: [Int]->Int
--contar [] = 0
--contar (x:xs) = 1+contar xs
--main = print ( contar [4,3])

--Implementar una función que obtenga los elementos en posiciones pares de una lista.
obtenerPares :: [Int]->[Int]
obtenerPares [] = []
obtenerPares (x:xs) = if x `mod` 2 == 0 
                        then [x]++obtenerPares(xs)
                      else obtenerPares(xs)
--main = print(obtenerPares [2,2,2,4,5])

--Definir una función que calcule el máximo común divisor de dos números.
euclides :: Int->Int->Int
--euclides x 0 = x
euclides x y = if y > 0 
                then euclides y (x `mod` y)
                else x

--main = print ( euclides 2 3)


-- SUMAR TODO EL CONTENIDO DE UNA LISTA CON FOLD
--suma :: [Int]->Int
--suma (x:xs) = x + foldl(+) 0 xs
--suma (x:xs) = foldl(+) x xs0
--main = print(suma [1,3,4,6,8])
--Implementar una función que calcule la suma de los 
--dígitos de un número entero.
sumarDigitos :: Int->Int
sumarDigitos(x) = if x >10 
        then (x `mod` 10)+ sumarDigitos (div x 10)
        else x 
--main = print(sumarDigitos 9999 )

--Definir una función que encuentre el elemento mínimo en una lista.
encontrarMinimo :: [Int]->Int
encontrarMinimo [] = 0
encontrarMinimo [x] = x
encontrarMinimo (x:y:xs) = if x < y then encontrarMinimo (x:xs)
                          else encontrarMinimo (y:xs)
                          
--main = print (encontrarMinimo [5,4,1,2,3])

--Escribir una función que obtenga el enésimo número de la secuencia de Fibonacci.
fibonacci :: Int ->Int
fibonacci 0 = 0
fibonacci 1 = 1 
fibonacci x = fibonacci (x-1) + fibonacci(x-2)

--main = print(fibonacci 6)
--Implementar una función que verifique si una cadena de texto es un palíndromo.
esPalindromo :: String -> Bool
esPalindromo [] = True
esPalindromo [x] = True
esPalindromo(x:xs) = if x == last xs then esPalindromo xs else False
--main = print(esPalindromo "neuquen")

palindrome :: String -> Bool
palindrome [] = True
palindrome [x] = True
palindrome(x:xs) = reverse (x:xs) == (x:xs)
--main = print(palindrome "neuquen")

-- Definir una función que elimine los duplicados de una lista.

-- Implementar una función que obtenga el producto de todos los elementos de una lista
obtenerProducto :: [Int] -> Int
obtenerProducto [] = 0 
obtenerProducto [x] = x 
obtenerProducto (x:xs) = foldl(*) x xs

--main = print (obtenerProducto[1,4,5,7,9])

--fibonacci :: Int -> Integer-
--fibonacci n = fibonacciHelper n 0 1

--EJEMPLOS MAP
listaPrueba = [2,3,5,7,11]
total = sum ( map(3*) listaPrueba)

--main = print total


contar:: Int -> Int
contar x = if x `mod` 2 == 0
  then 1
  else 0 

contarPares :: [Int] -> Int
contarPares [] = 0
contarPares (x:xs) = (contar x) + contarPares xs

--main = print (contarPares [1,2,3,4,5,6] ) 
notable :: Int -> Int
notable x = if x `mod` 2 == 0
  then 1
  else 0 
contarNotables :: (Int -> Int) -> [Int] -> Int
contarNotables f [] = 0 
contarNotables f (x:xs) = (f x) + contarNotables f xs
--funcion por parametros, verificar el tema de la declaracion
-- siempre va con parentesis ??
--main = print( contarNotables notable [1,2,3,4,5,6])
--en haskell las variables no pueden empezar con mayuscula
notaPrimerParcial = [1,2,3,4,5]
notaSegundoParcial = [5,8,9,6,5]

--promedio (x,y) = (x+y)/2

--promedios = map promedio (zip notaPrimerParcial notaSegundoParcial) 

--main = print (maximum promedios)

--main = print( foldl (*) 2 notaPrimerParcial)
isEven :: Int -> Bool
isEven x = if mod x 2 == 0 then True else False
listaPares = filter (isEven) notaPrimerParcial
--main = print( listaPares)

sumar:: Int -> Int -> Int
sumar x y = x+y
incrementa = sumar 1  
-- .. = 1 ..
--main = print ( incrementa 10) 

eliminarDuplicados :: [Int] -> [Int]
eliminarDuplicados [] = []
eliminarDuplicados [x] = [x]

eliminarDuplicados (x:xs) = if elem x xs 
                            then eliminarDuplicados xs 
                            else x:(eliminarDuplicados xs)
--main = print ( eliminarDuplicados [1,2,3,2,1,3])

sumarN:: Int -> Int -> Int
sumarN x y = x+y
sumar5 = sumarN 5
--main = print (sumar5 10)

--main = print [x | x <- [1..10],even x]
--main = print --main = print ( (x | x <- [1..10]))

--Recibia dos listas y a la suma de los elementos drl primero le restaba la suma de los elemrntos del segundo
sumaTotal:: [Int]->Int
sumaTotal [] = 0
sumaTotal (x:xs) = x + sumaTotal xs 
--main = print (sumaTotal [1,4,8,6])
restaTotal:: [Int]->[Int]->Int
restaTotal [][] = 0 -- bien
restaTotal (x:xs) [] = x + sum xs -- bien 
restaTotal  [] (y:ys) = (-1)*(y + sum ys)
restaTotal (x:xs) (y:ys) = (x+ sum xs) - (y+ sum ys) --bien

main = print ( restaTotal [] [1,4,2])