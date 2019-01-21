module View exposing (view)

import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Html exposing (..)
import Html.Attributes exposing (class, style)
import Html.Events exposing (onClick)
import Model exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ bootstrap model
        , something model
        ]


bootstrap model =
    Grid.container
        []
        [ CDN.stylesheet -- creates an inline style node with the Bootstrap CSS
        , Grid.row []
            [ Grid.col []
                [ button [ class "btn btn-primary btn-lg", onClick Increment ] [ text "+" ]
                ]
            , Grid.col []
                [ button [ class "btn btn-secondary btn-lg", onClick Decrement ] [ text "-" ]
                ]
            ]
        , Grid.row []
            [ Grid.col []
                [ h1 [] [ text (String.fromInt model.number) ]
                ]
            ]
        ]


something model =
    div []
        [ text "text"
        , h1 [] [ text "h1" ]
        , h2 [] [ text "h2" ]
        , h3 [] <| List.map text [ "h3", "h3", "h3", "h3", "h3" ]
        ]
