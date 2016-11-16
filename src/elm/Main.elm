module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


-- component import example

import Components.Hello exposing (hello)


-- APP


main : Program Never Int Msg
main =
    beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    Int


model : number
model =
    0



-- UPDATE


type Msg
    = NoOp
    | Increment


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Increment ->
            model + 1



-- VIEW
-- Html is defined as: elem [ attribs ][ children ]
-- CSS can be applied via class names or inline style attrib


view : Model -> Html Msg
view model =
    div [ style styles.root ]
        [ div [ style styles.container ]
            [ img [ src "static/img/elm.jpg", style styles.img ] []
              -- inline CSS (via var)
            , br [] []
            , hello model
              -- ext 'hello' component (takes 'model' as arg)
            , p [] [ text ("Elm Webpack Starter") ]
            , button [ onClick Increment ] [ text "FTW!" ]
            ]
        ]



-- CSS STYLES


styles :
    { root : List ( String, String )
    , container : List ( String, String )
    , img : List ( String, String )
    }
styles =
    { root =
        [ ( "position", "absolute" )
        , ( "width", "100%" )
        , ( "height", "100%" )
        , ( "display", "flex" )
        , ( "align-items", "center" )
        , ( "justify-content", "center" )
        ]
    , container =
        [ ( "display", "flex" )
        , ( "width", "100%" )
        , ( "flex-direction", "column" )
        , ( "align-items", "center" )
        ]
    , img =
        [ ( "width", "33%" )
        , ( "border", "4px solid #337AB7" )
        ]
    }
