port module Ports exposing (..)

import Model exposing (..)
import Json.Encode as E

port cache : E.Value -> Cmd msg