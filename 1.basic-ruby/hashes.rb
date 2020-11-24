# Create
paris = {
  "country" => "France",
  "population" => 2211000
}

# Or

paris = {
  country: "France",
  population: 2211000
}

# Read
paris["country"]     # => "France"
paris["population"]  # => 2211000

# Update
paris["population"] = 2211001

# Delete
paris.delete("star_monument")

# Each iteration
paris.each do |key, value|
  puts "Paris #{key} is #{value}"
end

# Custom Methods
paris.key?("country")   #=> true
paris.key?("language")  #=> false
paris.keys              #=> ["country", "population", "star_monument"]
paris.values            #=> ["France", 2211000, "Tour Eiffel"]

# Arrays accessed by indexes, Hash by keys
