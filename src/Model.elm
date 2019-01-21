module Model exposing (Model, Msg(..), init)


type alias Model =
    { number : Int }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { number = 1 }
    , Cmd.none
    )


type Msg
    = Increment
    | Decrement
