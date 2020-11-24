https://kitt.lewagon.com/camps/473/lectures/03-AR-Database%2F03-ActiveRecord-Basics

# Create
restaurant = Restaurant.new(
  name: "La Tour d'Argent",
  address: "15 Quai de la Tournelle, 75005 Paris"
)
restaurant.save
# => INSERT INTO restaurants SET name = 'La Tour d\'Argent', address = '[...]'

# Read all
restaurants = Restaurant.all

# Read one
restaurant = Restaurant.find(1)
restaurant = Restaurant.find_by(name: "La Tour d'Argent") #find by attr
restaurant.name #gives name of restaurant

# Count
Restaurant.count


# Update
restaurant = Restaurant.find(1)
restaurant.address = '14 Quai de la Tournelle, 75005 Paris'
restaurant.save

# Delete
restaurant = Restaurant.find(1)
restaurant.destroy

# Filtering
restaurants = Restaurant.where(rating: 3)
restaurants = Restaurant.where("name LIKE ?", "%tour%") #where like

Restaurant.first
