module Main exposing (main)

import Html exposing (textarea, text)
import Html.Attributes exposing (style)


-- third party

import Json.Print


main =
    textarea [ style [ ( "min-width", "40em" ), ( "min-height", "20em" ) ] ]
        [ text <| Result.withDefault "" (Json.Print.prettyString 4 exampleJsonInput)
        ]


exampleJsonInput =
    """
{
    "name": "Arnold",
    "age": 70,
    "isStrong": true,
    "knownWeakness": null,
    "nicknames": ["Terminator", "The Governator"],
    "extra": {
           "foo": "bar",
           "zap": {
                "cat": 1,
                "dog": 2
            },
            "transport": [
                [ "ford", "chevy" ],
                [ "TGV", "bullet train", "steam" ]
            ]
    }
}
"""
