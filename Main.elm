import Browser
import Html exposing (Html, Attribute, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)

type alias Model = 
    { message : String }

type Msg =
    Message String

--- UPDATE ---

init : Model 
init = 
    { message = "This is initial state" }


update : Msg -> Model -> Model
update msg model =
    case msg of 
        Message newMessage ->
            { model | message = newMessage }
            
--- VIEW ---

view : Model -> Html Msg
view model = 
    div [] 
    [ input [ placeholder "Type here!", onInput Message ] []
    , div [] [text model.message]
    ]

main =
    Browser.sandbox
    { init = init
    , view = view
    , update = update
    }