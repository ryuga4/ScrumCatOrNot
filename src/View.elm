module View exposing (view)

import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ bootstrap model
        , something model
        , user model
        , liveUser model
        ]


bootstrap model =
    Grid.container
        []
        [ CDN.stylesheet -- creates an inline style node with the Bootstrap CSS
        , Grid.row []
            [ Grid.col []
                [ button [ class "btn btn-primary btn-lg", onClick CatFound ] [ text "Meow" ]

                ]

            , Grid.col []
                [ button [ class "btn btn-secondary btn-lg", onClick CatNotFound ] [ text "Not Cat" ]
                ]
            ]
        , Grid.row []
            [ Grid.col []
                [ h1 [] [ text (model.txt) ]
                ]
            ]
        ]


something model =
    div []
        [ text "text"
        , h1 [] [ text "aaa" ]
        , h2 [] [ text "sss" ]
        , h3 [] <| List.map text [ "fsa", "gfd", "h3", "h3", "h3" ]
        ]


user model =
    div []
        [ h1 [] [ text <| "Name: " ++ model.userName ]
        , input [ placeholder "New name", value model.userNameInput, onInput Change ]
            []
        , button [ class "btn btn-primary", onClick Accept ]
            [ text "Accept" ]
        ]


liveUser model =
    div []
        [ h1 [] [ text <| "Live name: " ++ model.userNameInput ]
        , input [ placeholder "New name", value model.userNameInput, onInput Change ]
            []
        , button [ class "btn btn-primary", onClick Accept ]
            [ text "Accept" ]
        ]
