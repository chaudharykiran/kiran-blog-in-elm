module Pages.Contacts exposing (page)

import Components.Container exposing (container)
import Components.Sidebar
import Element exposing (..)
import Element.Font as Font
import View exposing (View)


page : View msg
page =
    { title = "Contact Me"
    , attributes = []
    , element =
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
            , el [ height fill, width (fillPortion 8) ] content
            ]
        )


content : Element msg
content =
    column [ spacing 20 ]
        [ el [ Font.size 40, Font.bold ] (text "Say Hello")
        , row []
            [ el [] (text "Email: ")
            , el [ Font.bold ] (text "hellokiran2020@gmail.com")
            ]
        , row []
            [ el [] (text "LinkedIn: ")
            , newTabLink []
                { url = "https://www.linkedin.com/in/chaudharykiran/"
                , label = el [ Font.bold ] (text "https://www.linkedin.com/in/chaudharykiran/")
                }
            ]
        ]
