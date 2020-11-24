rails generate controller Restaurants

# always plural

# eg
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # root: '/'

  # get '/islands', to: "islands#index"

  resources :islands do
    resources :bookings, only: [:new, :create]
   end
  resources :bookings, except: [:new, :create] do
    member do
      get 'confirmation'
    end
  end
  get 'profile', action: :show, controller: 'users'

end


Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  # Generic syntax:
  # verb 'path', to: 'controller#action'
end

class PagesController < ApplicationController
  def about
  end
end
<!-- app/views/pages/about.html.erb -->
<h1>Our first view 🚀</h1>

# creates a pages controller
# creates an about page in pages -> /about
# action called @about that you can call on the page
# html page for about
