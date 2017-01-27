module H2ioNotify exposing (..)

import Html exposing (div, text, b, Html)
import Styles exposing (..)
import Html.CssHelpers exposing (style)


type alias StatusMessage =
    String


type Status
    = Success StatusMessage
    | Error StatusMessage
    | Loading


rotateAnimation : String
rotateAnimation =
    """
      @keyframes rotate {
        0% {
          transform: translate(-50%, -50%) rotate(0deg);
        }
        100% {
          transform: translate(-50%, -50%) rotate(360deg);
        }
      }
    """


view : Status -> Html msg
view status =
    let
        node =
            case status of
                Loading ->
                    div [ styles loading ]
                        [ style rotateAnimation
                        , div [ styles loader ] []
                        ]

                Success msg ->
                    div [ styles success ]
                        [ b [ styles icon ] [ text "✔" ]
                        , text msg
                        ]

                Error msg ->
                    div [ styles error ]
                        [ b [ styles icon ] [ text "✖" ]
                        , text msg
                        ]
    in
        div [] [ node ]
