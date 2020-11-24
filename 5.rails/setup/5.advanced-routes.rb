# /restaurants/top gets top rests from the collection

resources :restaurants do
    collection do
      get :top
    end
  end

  #  then
  def top
    @restaurants = Restaurant.where(stars: 5)
  end


# /restaurants/42/chef you need member
resources :restaurants do
    member do
      get :chef
    end
  end

  def chef
    @restaurant = Restaurant.find(params[:id])
    @chef_name = @restaurant.chef_name
  end

# use resources
resources :reviews, only: [ :new, :create ]
