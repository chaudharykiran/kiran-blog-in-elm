module Components.Container exposing (container)

import Element exposing (..)


container : List (Attribute msg) -> Element msg -> Element msg
container styles mainContent =
    el (styles ++ [ width (px 963), height fill, centerX ]) mainContent
