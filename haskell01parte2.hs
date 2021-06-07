-- Prática 01 de Haskell - Parte 2
-- Nome: Izabella M. Paulette

--1)Crie uma função itemize :: [String] -> [String] que receba uma lista de nomes e aplique a função htmlItem em cada nome.
itemize :: [String] -> [String]
htmlItem :: String -> String
htmlItem strg = "<li>"++strg++"</li>"
itemize lis = map htmlItem lis

--2)Crie uma função onlyVowels :: String -> String que receba uma string e retorne outra contendo somente suas vogais. Por exemplo: onlyVowels "abracadabra" vai retornar "aaaaa".
onlyVowels :: String -> String
isVowel :: Char -> Bool
isVowel c = if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' then True else False
onlyVowels strg1 = filter isVowel strg1

--3)Escreva uma função onlyElderly :: [Int] -> [Int] que, dada uma lista de idades, selecione somente as que forem maiores que 65 anos.
onlyElderly :: [Int] -> [Int]
isElderly :: Int -> Bool
isElderly idade = (idade > 65)
onlyElderly lisInt = filter isElderly lisInt

--4)Crie uma função onlyLongWords :: [String] -> [String] que receba uma lista de strings e retorne somente as strings longas (use a função isLongWord definida no código de exemplo no início da prática).
onlyLongWords ::[String] -> [String]
isLongWord :: String -> Bool
isLongWord s = length s > 10
onlyLongWords lis1 = filter isLongWord lis1

--5)Escreva uma função onlyEven que receba uma lista de números inteiros e retorne somente aqueles que forem pares. Agora é com você a definição da tipagem da função!
onlyEven :: [Int] -> [Int]
isEvenBetter  :: Int -> Bool
isEvenBetter n = mod n 2 == 0
onlyEven lisInt1 = filter isEvenBetter lisInt1

--6)Escreva uma função onlyBetween60and80 que receba uma lista de números e retorne somente os que estiverem entre 60 e 80, inclusive. Você deverá criar uma função auxiliar between60and80 e usar && para expressar o operador "E" lógico em Haskell.
onlyBetween60and80 :: [Float] -> [Float]
between60and80 :: Float -> Bool
between60and80 f = f > 60 && f < 80
onlyBetween60and80 lisF = filter between60and80 lisF

--7)Crie uma função countSpaces que receba uma string e retorne o número de espaços nela contidos. Dica 1: você vai precisar de uma função que identifica espaços. Dica 2: aplique funções consecutivamente, isto é, use o resultado de uma função como argumento para outra.
countSpaces :: String -> Int
space :: Char -> Bool
space c = c == ' '
countSpaces strg2 = length (filter space strg2)

--8)Escreva uma função calcAreas que, dada uma lista de valores de raios de círculos, retorne uma lista com a área correspondente a cada raio.
calcAreas :: [Float] -> [Float]
area :: Float -> Float
area r = pi * r^2
calcAreas lisR = map area lisR

{-9)Neste exercício, você vai criar uma função equivalente a elem, mas usando uma função de alta ordem. Crie a função charFound :: Char -> String -> Bool que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:

> charFound 'a' ""  
False  
> charFound 'a' "uau"  
True -}
charFound :: Char -> String -> Bool
charFound c2 strg3 = any (c2==) strg3