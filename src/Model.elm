module Model exposing (Model, Msg(..), init)


type alias Model =
    { number : Int
    , userNameInput : String
    , userName : String
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { number = 1
      , userNameInput = ""
      , userName = "Example User"
      }
    , Cmd.none
    )


type Msg
    = Increment
    | Decrement
    | Change String
    | Accept
