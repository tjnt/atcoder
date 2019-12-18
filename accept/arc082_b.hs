solve i [] = 0
solve i [a] = if a == i then 1 else 0
solve i (a:b:xs)
  | i == a    = 1 + solve (i+2) xs
  | otherwise = solve (i+1) (b:xs)

main :: IO ()
main = do
    _ <- getLine
    p <- map read . words <$> getLine :: IO [Int]
    print $ solve 1 p
