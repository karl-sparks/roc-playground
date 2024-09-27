module [convert]

convert : U64 -> Str
convert = \number ->
    addNumber = \str, div, noise ->
        Str.concat str (addNoise number div noise)

    res =
        addNumber "" 3 "Pling"
        |> addNumber 5 "Plang"
        |> addNumber 7 "Plong"

    when res is
        "" -> Num.toStr number
        _ -> res

addNoise : U64, U64, Str -> Str
addNoise = \number, div, noise ->
    when number % div is
        0 -> noise
        _ -> ""
