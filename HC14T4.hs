{-# LANGUAGE TypeApplications #-}

module Main where

import System.IO (hFlush, stdout)

-- Convertit une String en Int avec TypeApplications
strToInt :: String -> Int
strToInt = read @Int

main :: IO ()
main = do
  putStr "Entrez un nombre (ex: 15500) : "
  hFlush stdout
  line <- getLine
  let n = strToInt line
  putStrLn $ "Vous avez entré (Int) : " ++ show n

