module Styles exposing (..)

import Html
import Html.Attributes exposing (style)
import Css exposing (..)


styles : List Css.Mixin -> Html.Attribute msg
styles =
    Css.asPairs >> style


background : List Css.Mixin
background =
    [ all initial
    , display block
    , boxSizing borderBox
    , backgroundColor (hex "e1e3e4")
    , border (px 2)
    , borderStyle solid
    , borderRadius (px 4)
    , position relative
    , margin (px 10)
    ]


loading : List Css.Mixin
loading =
    background
        ++ [ minHeight (px 41)
           , padding (px 5)
           , borderColor (hex "cfd2d4")
           ]


statusPartial : List Css.Mixin
statusPartial =
    background
        ++ [ textAlign center
           , padding (px 10)
           , paddingLeft (px 40)
           , fontWeight bold
           , fontSize (px 14)
           , fontFamilies [ (qt "Fira Sans"), "sans-serif" ]
           ]


error : List Css.Mixin
error =
    statusPartial
        ++ [ color (hex "a94442")
           , borderColor (hex "a94442")
           , backgroundColor (hex "f2dede")
           ]


success : List Css.Mixin
success =
    statusPartial
        ++ [ color (hex "3c763d")
           , borderColor (hex "a3c763d")
           , backgroundColor (hex "dff0d8")
           ]


icon : List Css.Mixin
icon =
    [ all initial
    , display block
    , color inherit
    , fontSize (px 28)
    , textAlign left
    , width (px 32)
    , position absolute
    , left (px 5)
    , top (pct 50)
    , property "offset-inline-start" "5px"
    , transform (translateY (pct -50))
    ]


loader : List Css.Mixin
loader =
    [ position absolute
    , width (px 20)
    , height (px 20)
    , boxSizing borderBox
    , border3 (px 2) solid (hex "fcfcfc")
    , borderRightColor transparent
    , top (pct 50)
    , left (pct 50)
    , borderRadius (pct 50)
    , transform (translate2 (pct -50) (pct -50))
    , property "will-change" "transform"
    , property "animation" "rotate 1s linear infinite"
    ]
