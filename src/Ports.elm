port module Ports exposing (cache)

import Json.Encode as E
import Model exposing (..)


port cache : E.Value -> Cmd msg
