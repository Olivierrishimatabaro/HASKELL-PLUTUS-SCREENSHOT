module Main where

-- 1. Définition du type personnalisé Result a
data Result a
  = Success a         -- un résultat correct
  | Error String      -- un message d'erreur
  deriving (Show)

-- 2. Fonction utilisant le pattern matching + @ (as-pattern)
describeResult :: Result a -> String
describeResult res@(Success _) =
  "Ceci est un succès. Structure complète = " ++ show res

describeResult res@(Error msg) =
  "Ceci est une erreur: " ++ msg ++ "\nStructure complète = " ++ show res

-- 3. Programme principal
main :: IO ()
main = do
  let r1 = Success 42
  let r2 = Error "Division by zero"

  putStrLn (describeResult r1)
  putStrLn ""
  putStrLn (describeResult r2)
