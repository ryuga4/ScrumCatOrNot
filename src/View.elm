module View exposing (view)

import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, style)
import Model exposing (..)

import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid

import Bootstrap.Grid.Col as Col
  
view : Model -> Html Msg
view model = 
    Grid.container 
        []
        [ CDN.stylesheet -- creates an inline style node with the Bootstrap CSS
        , Grid.row []
            [ Grid.col [] 
                [ button [class "btn btn-primary btn-lg", onClick Increment] [text "+"]
                ]
            , Grid.col [] 
                [ button [class "btn  btn-secondary btn-lg", onClick Decrement] [text "-"]
                ] 
            ]
        , Grid.row []
             [ Grid.col []
                [ h1 [] [text (String.fromInt model)]
                ]
             ] 
        ]


dupa = List.map identity 

[1,2,3]
    