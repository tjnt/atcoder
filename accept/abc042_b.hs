import           Data.List
main = interact $ concat . sort . tail . lines
