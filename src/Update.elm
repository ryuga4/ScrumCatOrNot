module Update exposing (update)

import Json.Encode as E
import Model exposing (..)
import Ports exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increment ->
            let
                newModel =
                    { model | number = model.number + 1 }
            in
            ( newModel, cache (E.bool True) )

        Decrement ->
            let
                newModel =
                    { model | number = model.number - 1 }
            in
            ( newModel, Cmd.none )

        Change newName ->
            let
                newModel =
                    { model | userNameInput = newName }
            in
            ( newModel, Cmd.none )

        Accept ->
            let
                newModel =
                    { model | userName = model.userNameInput }
            in
            ( newModel, Cmd.none )
