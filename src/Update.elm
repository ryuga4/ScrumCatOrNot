module Update exposing (update)

import Json.Encode as E
import Model exposing (..)
import Ports exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increment ->
            ( model + 1, cache (E.bool True) )

        Decrement ->
            ( model - 1, Cmd.none )
