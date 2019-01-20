module View exposing (view)


import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Model exposing (..)

import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid

import Bootstrap.Grid.Col as Col
  
view : Model -> Html Msg
view model = 
    Grid.container []
        [ CDN.stylesheet -- creates an inline style node with the Bootstrap CSS
        , Grid.row []
            [ Grid.col [Col.md1]
                [ button [onClick Increment] [text "+"]
                ]
            , Grid.col [Col.md1]
                [ text (String.fromInt model)
                ]
            , Grid.col [Col.md1] 
                [ button [onClick Decrement] [text "-"]
                ] 
            ]
        ]
 