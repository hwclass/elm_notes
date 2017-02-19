-- Model : contains application state
-- View : visual representation of state
-- Message : request from user to alter state
-- Update : interpret message to update model

-- Counter
import Html exposing (..)
import Html.Events exposing (onClick)

model = 0

view model =
  div []
    [ button [ onClick Increment ] [ text "+" ]
    , div [] [ text (toString model) ]
    , button [ onClick Decrement ] [ text "-" ]
    ]
    
type Message = Increment | Decrement

update msg model =
  case msg of
    Increment ->
      model + 1
      
    Decrement ->
      model - 1

main =
  beginnerProgram
    { model = model
    , view = view
    , update = update
    }

