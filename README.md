# elm_notes

Eml Getting Started

--Hello World--
import Html exposing (text)

main = 
  text "Hello, World!"

--Counter--
import Html exposing (beginnerProgram, div, button, text)
import Html.Events exposing (onClick)

main =
  beginnerProgram { model = 0, view = view, update = update }


view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]


type Msg = Increment | Decrement


update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

--XXX--
"hello" ++ " world"

--XXX--
(1 + 2 ) * 4
// 12

--XXX--
Subtraction -
Division /
Integer Division //
Less Than <
Equal To ==
Not Equal To /=

--Functions (Typed Functional Language)-- 
  Name       argument       
divideByTwo n =
   n / 2
  Body

--Function Signatures--
divideByTwo: Float -> Float

--XXX--
import Html exposing (text)

main = 
  divideNumber 5 135
    |> text

divideNumber divisor dividend =
  dividend / divisor
    |> toString

--XXX--
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

--If Expressions--
isFactor dividend divisor =
  if rem dividend divisor  == 0 then
    True
  else
    False

--Data Structures--
--Lists--
primes = [2, 4, 5, 6]

--Tuples--
calculationResult = (True, 42)

--Records--
point = { x = 4, y = 33 }

--Practice for Lists--
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

--Tuples--
import Html exposing (text)
import List

main =
  text funWithTuples
  
funWithTuples =
  let
    myTuple = ("First", "Second")
  in
    toString myTuple

--XXX--
--XXX--
--XXX--
