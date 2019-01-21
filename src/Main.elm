module Main exposing (main)

import Browser
import Model exposing (init)
import Subscriptions exposing (subscriptions)
import Update exposing (update)
import View exposing (view)


main =
    Browser.element { init = init, update = update, view = view, subscriptions = subscriptions }
