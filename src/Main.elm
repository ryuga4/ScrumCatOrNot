module Main exposing (main)

import Browser
import Model exposing (init)
import Update exposing (update)
import Subscriptions exposing (subscriptions)
import View exposing (view)



main =
  Browser.element { init = init, update = update, view = view, subscriptions = subscriptions }

 






