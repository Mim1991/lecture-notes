# https://kitt.lewagon.com/camps/473/lectures/05-Rails%2F07-Airbnb-Facebook-connect#
# https://github.com/lewagon/rails-pundit/compare/app-without-authorization...app-with-authorization?diff=split&name=app-with-authorization
gem 'pundit'
bundle install
rails g pundit:install

# Pundit whitelist approach
include Pundit
after_action :verify_authorized, except: :index, unless: :skip_pundit?
after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
private
def skip_pundit?
  devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
end

# for protecting a model
rails g pundit:policy restaurant

# check github link. need to add authorize @model in places
