# elm-pretty-print-json

Pretty print JSON encoded as a String or as `Json.Encode.Value` with nesting
indents.

Useful for implementing JSON editors, where you want to format the JSON before
initializing a `<textarea>`

## Example
Take a string containing JSON and format it with 4 space indents.
```elm
json = """{"name": "Arnold", "age": 70, "isStrong": true,"knownWeakness": null,"nicknames": ["Terminator", "The Governator"],"extra": {"foo": "bar","zap": {"cat": 1,"dog": 2},"transport": [[ "ford", "chevy" ],[ "TGV", "bullet train", "steam" ]]}}"""

indent = 4

Result.withDefault "" (Json.Print.prettyString indent json)
{-
{
    "extra": {
        "transport": [
            [
                "ford",
                "chevy"
            ],
            [
                "TGV",
                "bullet train",
                "steam"
            ]
        ],
        "zap": {
            "dog": 2,
            "cat": 1
        },
        "foo": "bar"
    },
    "nicknames": [
        "Terminator",
        "The Governator"
    ],
    "knownWeakness": null,
    "isStrong": true,
    "age": 70,
    "name": "Arnold"
}
-}
```
