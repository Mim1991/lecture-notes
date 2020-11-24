# Create new rails app
rails new \
  --database postgresql \
  --webpack \
  -m https://raw.githubusercontent.com/lewagon/rails-templates/master/devise.rb \
  CHANGE_THIS_TO_YOUR_RAILS_APP_NAME
rails db:create
git add . && git commit -m "rails new"
hub create
git push origin master
hub browse
rails s

gem 'autoprefixer-rails' #automatic works for firefox, IE etc
gem 'font-awesome-sass', '~> 5.6.1' #font awesome library
gem 'simple_form' #forms from bootstrap, need to have bootstrap installed
gem 'pg' #optional for postgresql
gem 'dotenv-rails', groups: [:development, :test] #for env keys cloudinary
gem 'cloudinary', '~> 1.16.0' #images
gem 'devise' #sign up and log ins
gem 'pundit' #authorization
gem 'geocoder' #adds a map


yarn add bootstrap jquery popper.js

# Image hosting
touch .env
echo '.env*' >> .gitignore



# Adds simple form in
bundle install
rails generate simple_form:install --bootstrap
@import "bootstrap/scss/bootstrap";
git add .
git commit -m "Rails new with frontend and form gems"



# Le wagon's stylesheet
rm -rf app/assets/stylesheets
curl -L https://github.com/lewagon/rails-stylesheets/archive/master.zip > stylesheets.zip
unzip stylesheets.zip -d app/assets && rm -f stylesheets.zip && rm -f app/assets/rails-stylesheets-master/README.md
mv app/assets/rails-stylesheets-master app/assets/stylesheets

yarn add typed.js

(Sweet Alert
Select 2)
