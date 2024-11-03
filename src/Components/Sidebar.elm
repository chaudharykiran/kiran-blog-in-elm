module Components.Sidebar exposing (..)

import Element exposing (..)
import Element.Border as Border
import Element.Font as Font


view : Element msg
view =
    column
        [ height fill
        , width (fillPortion 4)
        , spacing 30
        ]
        [ viewIntroduction
        , viewNavigation
        ]


viewIntroduction : Element msg
viewIntroduction =
    link []
        { url = "/"
        , label =
            column [ width fill, spacing 5 ]
                [ el [ Border.rounded 99999, width (px 80), height (px 80), clip ]
                    (image [ width fill ]
                        { src = "/images/kiran-pic.jpg", description = "My Avatar" }
                    )
                , el [ Font.bold ] (text "Kiran Kumar Chaudhary")
                , coloredText (rgb255 136 136 136) "Code. Learn. Share"
                ]
        }


viewNavigation : Element msg
viewNavigation =
    column [ width fill, spacing 10 ]
        [ link [] { url = "/", label = text "Articles" }
        , link [] { url = "/about-me", label = text "About Me" }
        , link [] { url = "/my-works", label = text "My Works" }
        , link [] { url = "/contacts", label = text "Contact Me" }
        , coloredText (rgb255 136 136 136) "© All rights reserved."
        ]


coloredText : Color -> String -> Element msg
coloredText color content =
    el [ Font.color color ] (text content)
