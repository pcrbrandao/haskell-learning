import Test.QuickCheck
import UdemyCourse.Average

prop_average :: Bool
prop_average = average [1, 2, 3] == 2.0

main :: IO ()
main = do
  -- quickCheck average
  putStrLn ""
  quickCheck prop_average
  return ()