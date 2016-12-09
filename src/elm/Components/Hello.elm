module Components.Hello exposing (..)

import Html exposing (..)
import Polymer.Paper as Paper
import Html.Attributes exposing (attribute)


-- hello component


helloPaper : Html msg
helloPaper =
    Paper.input [ attribute "value" "Hello elm-paper-input" ] []
