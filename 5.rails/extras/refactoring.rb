<!-- app/views/restaurants/_form.html.erb -->
<%= form_for(restaurant) do |f| %>
  <%= f.label :name %>
  <%= f.text_field :name %>
  <%= f.submit %>
<% end %>

<%= render "form", restaurant: @restaurant %>
<%= render 'shared/navbar' %>


# Before Action
before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
private
def set_restaurant
    @restaurant = Restaurant.find(params[:id])
end


# Simple Form
