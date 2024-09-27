module [colorCode, colors]

colorCode : Str -> Result U64 _
colorCode = \color ->
    res =
        when color is
            "black" -> 0
            "brown" -> 1
            "red" -> 2
            "orange" -> 3
            "yellow" -> 4
            "green" -> 5
            "blue" -> 6
            "violet" -> 7
            "grey" -> 8
            "white" -> 9
            _ -> 10

    Ok res

colors : List Str
colors = [
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white",
]
