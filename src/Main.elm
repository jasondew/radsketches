module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div
        [ id "content" ]
        [ headerView
        , contentView
        , footerView
        ]


contentView : Html Msg
contentView =
    div
        [ id "main-content" ]
        [ artworkView "picapt.png"
        , bioView
        , artworkView "shyguy.png"
        , artworkView "shyguy.png"
        , contactView
        , artworkView "shyguy.png"
        , artworkView "shyguy.png"
        , longArtworkView
        ]


headerView : Html Msg
headerView =
    div
        [ id "header" ]
        [ img [ src "logo.png" ] []
        , span [ class "main" ] [ text "RADsketches" ]
        , span [ class "diminuitive" ] [ text ".com" ]
        ]


bioView : Html Msg
bioView =
    div
        [ id "bio" ]
        [ text "Austin was once an adventurer like you until one day he took an arrow to the knee. Now, he draws." ]


contactView : Html Msg
contactView =
    div [ id "contact" ] [ text "CONTACT INFO" ]


artworkView : String -> Html Msg
artworkView imagePath =
    div
        [ class "artwork" ]
        [ img [ src imagePath ] [] ]


longArtworkView : Html Msg
longArtworkView =
    div [ class "long-artwork", class "col col-9" ] [ text "LONG ART" ]


footerView : Html Msg
footerView =
    div [ id "footer" ] [ text "© 2017 Robert Austin Dew" ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
