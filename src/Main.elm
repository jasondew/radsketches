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
        [ class "container-fluid" ]
        [ div [ class "row" ] [ headerView ]
        , div [ class "row" ] [ artworkView, bioView, artworkView ]
        , div [ class "row" ] [ artworkView, contactView, artworkView ]
        , div [ class "row" ] [ artworkView, longArtworkView ]
        ]


headerView : Html Msg
headerView =
    div
        [ id "header", class "col" ]
        [ span [ class "main" ] [ text "RADsketches" ]
        , span [ class "diminuitive" ] [ text ".com" ]
        ]


bioView : Html Msg
bioView =
    div [ id "bio", class "col" ] [ text "BIO" ]


contactView : Html Msg
contactView =
    div [ id "contact", class "col" ] [ text "CONTACT INFO" ]


artworkView : Html Msg
artworkView =
    div [ class "artwork", class "col" ] [ text "ART" ]


longArtworkView : Html Msg
longArtworkView =
    div [ class "long-artwork", class "col col-9" ] [ text "LONG ART" ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
