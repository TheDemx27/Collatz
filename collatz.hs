import Graphics.EasyPlot

collatz :: Integer -> Integer
collatz n
  | (n == 1) = 1
  | (odd n) = 3*n+1
  | (even n) = n `div` 2

collatzSequence :: Integer -> [Integer]
collatzSequence = terminate . iterate collatz
  where
    terminate (1:_) = [1]
    terminate (x:xs) = x:terminate xs

collatzStepNums :: Integer -> [(Double, Integer)]
collatzStepNums n =
  [ (x, y) | i <- [1..n], let x = fromIntegral i, let y = toInteger(length (collatzSequence i)) ]

plotCollatzStepNums :: Integer -> IO Bool
plotCollatzStepNums n = plot (PNG "plot.png") $ Data2D [Title "Collatz Step Number"] [] (collatzStepNums n)

main = do
    putStrLn "Collatz Plot: "
    num <- getLine
    plotCollatzStepNums (read num :: Integer)
