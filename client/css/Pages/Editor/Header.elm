module Pages.Editor.Header exposing (..)

import Colors
import Constants
import Css exposing (..)
import Css.Elements exposing (..)
import Css.File exposing (..)


header : UniqueClass
header =
    uniqueClass
        [ width (pct 100)
        , height (px 40)
        , backgroundColor Colors.darkGray
        , displayFlex
        , alignItems center
        , Colors.boxShadow |> .bottom
        , position relative
        , zIndex (int 4)
        , padding2 zero (px 16)
        ]


termsLabel =
    uniqueClass
        [ color Colors.lightGray
        , descendants
            [ a
                [ color Colors.pink
                , textDecoration underline
                ]
            ]
        ]


headerGroup : UniqueClass
headerGroup =
    uniqueClass
        [ displayFlex
        , alignItems center
        ]


logo : UniqueSvgClass
logo =
    uniqueSvgClass
        [ fill Colors.lightGray
        , height (px 20)
        , width (px 51)
        , marginRight (px 24)
        ]


button : UniqueClass
button =
    uniqueClass
        [ marginRight (px 16)
        , lastChild [ marginRight zero ]
        ]


copyLinkContainer =
    uniqueClass
        [ marginBottom (px 8)
        , lastChild [ marginBottom zero ]
        ]
