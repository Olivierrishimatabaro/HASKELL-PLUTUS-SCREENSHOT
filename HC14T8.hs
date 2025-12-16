-- HC1T8 - Tâche 8 : Fonctions d’ordre supérieur
-- applyTwice applique une fonction deux fois à une valeur

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

main :: IO ()
main = do
  putStrLn "Tests de applyTwice :"

  -- Exemple avec des nombres
  print (applyTwice (+1) 3)    -- 5
  print (applyTwice (*2) 4)    -- 16

  -- Exemple avec des chaînes
  print (applyTwice reverse "ab") -- "ab"
