module Main where

main :: IO ()
main = do
  putStrLn "Welcome to Scribe!"
  putStrLn "What is your name?"
  name <- getLine
  putStrLn $ "Hello, " ++ name ++ "! Have a great day!"