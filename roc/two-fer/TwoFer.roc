module [twoFer]

twoFer : [Name Str, Anonymous] -> Str
twoFer = \name ->
    word =
        when name is
            Name n -> n
            Anonymous -> "you"

    "One for $(word), one for me."
