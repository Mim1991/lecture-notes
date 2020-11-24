# Use for data validation or data extraction
/a/           # a
/ab/          # a directly followed by b

# Quantifiers
/abc?/         # ab followed by 0..1 c
/abc*/         # ab followed by 0..∞ c
/abc+/         # ab followed by 1..∞ c
/abc{3}/       # ab followed by 3 c

# Grouping
/(abc)+/      # 1..∞ abc
/(a|b)c/      # ac OR bc

# Ranges
/./           # any character
/[aB9]/       # a OR B OR 9
/[0-9]/       # any numeric character
/[a-zA-Z]/    # any alphabetical character
/[^a-c]/      # any char BUT a, b OR c
/\d/          # like /[0-9]/
/\w/          # like /[a-zA-Z0-9_]/
/\W/          # like /[^a-zA-Z0-9_]/
/\s/          # whitespace (space, tab, line-break, ...)

# Anchors
/^abc/        # starts with abc
/abc$/        # ends with abc
/^abc$/       # contains only abc
/\b/          # word boundary (start or end of word)

# Modifiers
/hello/i          # Will match hello, Hello, HeLlO, HELLO, ...
/hello.world/m    # Will match hello\nworld

# Match
"hello".match?(/l{2}/)  #=> true
"hello".match?(/m{2}/)  #=> false


# Capture Groups
match_data = "John Doe".match(/^(\w+) (\w+)$/)
puts "Firstname: #{match_data[1]}"
puts "Lastname: #{match_data[2]}"
# => Firstname: John
# => Lastname: Doe

# Gsub
"hello guys".gsub(/g.{3}/, 'le wagon')
#=> "hello le wagon"

# Scan
"Let's play tic tac toe".scan(/t../)
#=> ["t's", "tic", "tac", "toe"]
