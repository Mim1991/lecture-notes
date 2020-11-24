# Nest collection actions, don't nest member actions


rails generate model Review content:text restaurant:references

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
end

class Review < ApplicationRecord
  belongs_to :restaurant
end

rails g controller reviews

Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end

# creates a review page for new and create linked to restaurants
class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
end

# Create the review
  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id]) #finds the instance of rest with that id
    @review.restaurant = @restaurant #The review's restaurant is now the restaurant that was found so all linked
    @review.save #save the review to db
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end




# Delete the review
def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant)
end

<li class="list-group-item">
      <%= review.content %>
      <%= link_to "Remove",
                  review_path(review),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %>
</li>















