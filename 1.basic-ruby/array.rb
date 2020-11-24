# Create
empty_array = []

# Read
beatles[0]

# Update
beatles = ["john", "ringo", "seb"]
beatles[2] = "george"

# Append in array
beatles << "paul"

# Delete value
beatles.delete("john")
# or
beatles.delete_at(2)

# Array length
[1, 2, 3].length

# Iterate over array
beatles.each do |beatle|
 puts "#{beatle} is in the Beatles"
end

beatles.each { |beatle| puts "#{beatle} is in the Beatles" }
