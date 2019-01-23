module Model exposing (Model, Msg(..), init)


type alias Model =
    { number : Int
    , userNameInput : String
    , userName : String
    , txt : String
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { number = 1
      , userNameInput = ""
      , userName = "Example User"
      , txt = ""
      }
    , Cmd.none
    )


type Msg
    = CatFound
    | CatNotFound
    | Increment
    | Decrement
    | Change String
    | Accept
