{-----------
*    CLASE 2     *
-----------}
{---------------------TIPOS DE DATOS------------------------------
     
      Integer: Representa al conjunto de los numeros enteros, sobre este 
son utilizables las funciones {+,-,*,div,mod}
     
      Float: Representa los numeros racionales con la aritmetica de punto
flotante, sobre este no es posible aplicar "div" o "mod", aplicandose
entonces {+,-,*,/}.
    
       Bool: Representa los valores logicos {True, False} con las operca-
iones {&&, ||, not}

----------------------------------------------------------------}
--SI QUEREMOS SABER EL TIPO DE DATOS EN GHCI, EJECUTAMOS EL COMANDO  ":t" Y LA VARIABLE A CONOCER EL TIPO 

{--------------------------------------------------------------------
 Es buna buena practica definir la "signatura" de las funciones definidas
esto se hace especificando explicitamente el tipo de datos del dominio y 
el codominio de las funciónes que definimos
--------------------------------------------------------------------}
f1 :: Bool -> Bool
f1 x = not x

f2 :: Bool -> Float
f2 x = pi

f3 :: Integer -> Integer -> Bool -> Bool
f3 x y b = b || (x > y)

doble :: Float -> Float 
doble x = x + x

cuadruple :: Float -> Float 
cuadruple x = doble (doble x)


--Creo que olvide mensionar en la clase uno que "otherwise" viene a cumplir la funcion del else.
esPar :: Integer -> Bool
esPar n | mod n 2 == 0 = True 
        | otherwise = False

esPar2 :: Integer -> Bool
esPar2 n = mod n 2 == 0

esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe x y = mod x y == 0 
                 
triple x = x * 3
-----------------------------------
--                         TUPLAS                                  --
-----------------------------------
-- First => fst :: (a, b) -> a                  --
-- Second => snd :: (a, b) -> b                --
-- Fijate que "p" es una tupla               --
-- Que involucra 2 numeros float         --
-----------------------------------
normaVectorial :: (Float, Float) -> Float
normaVectorial p = sqrt ((fst p) ^ 2 + (snd p) ^ 2)
--OBSERVACION: CUANDO PASAMOS UNA TUPLA COMO PARAMETRO EN GHCI SE HACE DE LA FORMA (p_1, p_2). ejemplo: (1,2)



{------------------------------------------------------------
--Funcion identidad
--Agarro un tipo que puede ser cualquiera y lo llamo a y devuelvo a
--La funcion id de haskell 
-------------------------------------------------------------}
identidad :: a -> a
identidad x = x

crearPar :: a -> b -> (a, b)
crearPar x y = (x, y)

invertir :: (a, b) -> (b, a)
invertir x = (snd x, fst x)

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float 
distanciaPuntos p q = sqrt ((fst q - fst p) ^ 2 + (snd q - snd p) ^ 2)

restarTupla :: (Float, Float) -> (Float, Float) -> (Float, Float) 
restarTupla p q = (fst q - fst p, snd q - snd p)

dp2 :: (Float, Float) -> (Float, Float) -> Float
dp2 p q = normaVectorial (restarTupla p q)

--Ejercicio 1: 
fe1a :: Float -> (Float, Float, Float)
fe1a x = (2 * x, x ^ 2, x - 7)

fe1b :: Integer -> Integer
fe1b n | mod n 2 == 0 = div n 2 
      | otherwise = n + 1

--Ejercicio 2:
fe2 :: Integer -> Integer
fe2 n | mod n 6 == 0 = div (n ^ 2) 2
      | otherwise = 3 * n + 1 

ge2 :: (Integer, Integer) -> Integer
ge2 x = (fst x) * (snd x + 7)

he2 :: (Integer, Integer) -> Integer
he2 x = fe2 (ge2 x) 




