gem 'devise'
rails generate devise:install
rails g devise:views

rails generate devise User
# add on any additional column nmes here as well.
rails db:migrate

# Can call
user_signed_in?
# => true / false

current_user
# => User instance / nil

# protext all routes by default
# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

 # add this to skip logins
 skip_before_action :authenticate_user!, only: :home

# For additional fields
 class ApplicationController < ActionController::Base
  # [...]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
