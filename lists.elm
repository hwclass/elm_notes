import Html exposing (text)
import List

funWithLists =
  let
    myList = [2,3,5]
  in
    List.reverse myList
      |> toString
    
main =
  text funWithLists
