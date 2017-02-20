import Html exposing (text)

main = 
  divideNumber 5 135
    |> text


divideNumber: Float -> Float -> String
divideNumber divisor dividend =
  dividend / divisor
    |> toString
    
divideBy5: Float -> String
divideBy5 = 
  divideNumber 5
