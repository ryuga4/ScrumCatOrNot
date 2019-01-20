module Model exposing (..)

type alias Model = Int


init : () -> (Model, Cmd Msg)
init _ =
  ( 1
  , Cmd.none
  )

type Msg = Increment | Decrement
 