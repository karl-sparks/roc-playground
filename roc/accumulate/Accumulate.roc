module [accumulate]

accumulate : List a, (a -> b) -> List b
accumulate = \list, func ->
    when list is
        [] -> []
        [item, .. as rest] -> List.concat [func item] (accumulate rest func)
