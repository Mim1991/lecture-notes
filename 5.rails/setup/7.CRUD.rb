# Read all
def index
    @restaurants = Restaurant.all
end


# Read one
def show
    @restaurant = Restaurant.find(params[:id])
end




# Create
def new
    @restaurant = Restaurant.new # needed to instantiate the form_for
end

def create
  @restaurant = Restaurant.new(restaurant_params)
  @restaurant.save

  # no need for app/views/restaurants/create.html.erb
  redirect_to restaurant_path(@restaurant)
end
private
def restaurant_params
  params.require(:restaurant).permit(:name, :address, :rating)
end



# Update
def edit
    @restaurant = Restaurant.find(params[:id])
end
def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to restaurant_path(@restaurant)
end
private
def restaurant_params
  params.require(:restaurant).permit(:name, :rating, :address)
end




# Destroy
def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path
end

<%= link_to "Delete #{@restaurant.name}",
            restaurant_path(@restaurant),
            method: :delete,
            data: { confirm: "Are you sure?" } %>



