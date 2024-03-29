-- Implementing Enum with data
-- and deriving other functionalities
data Color = Red | Green | Blue | Purple
    deriving (Eq, Ord, Show, Read, Enum)

color1 :: Color
color1 = Red

main :: IO()
main = do
    -- Deriving from Show
    print color1
    -- Deriving from Read
    print (read "Purple"::Color)
    -- Deriving from Ord
    print (Green < Blue)
    -- Deriving from Enum
    -- Enum methods:
    print (pred Green)
    print (succ Red)

    print (enumFrom Red) -- print Red to Purple
    print [Red .. Purple] -- print Red to Purple
    print (enumFromTo Green Blue) -- Print [Green, Blue]
