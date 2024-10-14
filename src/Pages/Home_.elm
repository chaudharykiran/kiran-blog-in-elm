module Pages.Home_ exposing (page)

import Components.Container exposing (container)
import Components.Sidebar
import Element exposing (..)
import View exposing (View)


page : View msg
page =
    { title = "Homepage"
    , attributes = []
    , element =
        el [ width fill, height fill ]
            viewMain
    }


viewMain : Element msg
viewMain =
    container [ paddingEach { top = 20, bottom = 0, left = 0, right = 0 } ]
        (row
            [ width fill
            , height fill
            , spacing 20
            ]
            [ Components.Sidebar.view
            , content
            ]
        )


content : Element msg
content =
    el [ height fill, width (fillPortion 8) ] <| el [ centerX, centerY ] (text "Content")
