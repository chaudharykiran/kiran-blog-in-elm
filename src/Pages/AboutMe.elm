module Pages.AboutMe exposing (page)

import Components.Container exposing (container)
import Components.Sidebar
import Element exposing (..)
import Element.Font as Font
import View exposing (View)


page : View msg
page =
    { title = "About Me"
    , attributes = []
    , element =
        viewMain
    }


viewMain : Element msg
viewMain =
    container [ paddingEach { top = 20, bottom = 0, left = 0, right = 0 } ]
        (row [ width fill, height fill, spacing 20 ]
            [ Components.Sidebar.view
            , el [ height fill, width (fillPortion 8) ] content
            ]
        )


content : Element msg
content =
    column [ spacing 20 ]
        [ el [ Font.size 40, Font.bold ] (text "About Me")
        , column [ spacing 5 ]
            [ el []
                (image [ width (px 600), height (px 600) ]
                    { src = "/assets/kiran-pic.jpg"
                    , description = "Kiran Kumar Chaudhary"
                    }
                )
            , el [ Font.italic ] (text "Matsumoto, Nagano, City in Japan")
            ]
        , bulletText "I am a software engineer with a passion for learning and building things."
        , bulletText "I am currently working at Rakuten Group Inc. as a Lead Frontend Engineer."
        ]


bulletText : String -> Element msg
bulletText textContent =
    row [ spacing 10 ]
        [ text "•"
        , text textContent
        ]
