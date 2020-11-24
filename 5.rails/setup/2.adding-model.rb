# https://kitt.lewagon.com/camps/473/lectures/05-Rails%2F02-Rails-CRUD

rails generate model Restaurant name:string rating:integer
rails db:migrate
git status
git add .
git commit -m "Add restaurant model"

# updating columns
rails g migration AddAddressToRestaurants
rails db:migrate
git add .
git commit -m "Add address to Restaurant"

# other changes
add_column
change_column
rename_column
remove_column
add_reference

# reviews belong to restaurants. references
rails generate model Review content:text restaurant:references
