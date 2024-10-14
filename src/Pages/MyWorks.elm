module Pages.MyWorks exposing (page)

import Components.Container exposing (container)
import Components.Sidebar
import Element exposing (..)
import Element.Font as Font
import View exposing (View)


page : View msg
page =
    { title = "MyWorks"
    , attributes = []
    , element =
        vieMain
    }


vieMain : Element msg
vieMain =
    container [ paddingEach { top = 20, bottom = 0, left = 0, right = 0 } ]
        (row [ width fill, height fill, spacing 20 ]
            [ Components.Sidebar.view
            , el [ height fill, width (fillPortion 9) ] content
            ]
        )


content : Element msg
content =
    column [ spacing 20 ]
        [ el [ Font.size 40, Font.bold ] (text "My Works")
        , column [ spacing 10 ]
            [ newTabLink [] { url = "https://www.rakuten.co.jp/", label = text "Rakuten Group Inc." }
            , newTabLink [] { url = "https://zegal.com/", label = text "Zegal Inc." }
            , newTabLink [] { url = "https://portpro.io/", label = text "Port Pro Inc." }
            , newTabLink [] { url = "https://tyrocity.com/", label = text "TyroCity Inc." }
            ]
        ]
