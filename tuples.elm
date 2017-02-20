import Html exposing (text)
import List

main =
  text funWithTuples
  
funWithTuples =
  let
    myTuple = ("First", "Second")
  in
    toString myTuple
