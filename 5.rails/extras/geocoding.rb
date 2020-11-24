# https://gist.github.com/Eschults/d82b1d481eac8639dbf5f70b895f11b0
# https://kitt.lewagon.com/camps/473/lectures/05-Rails%2F08-Airbnb-Geocoder#
# code on github as everything.

gem 'geocoder'
rails generate geocoder:config

# change default settings in config /initializers/geocoder.rb

# add columns for long and lat
rails g migration AddCoordinatesTo*Flats* latitude:float longitude:float
rails db:migrate

# app/models/flat.rb
class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

# can test in console after this

# add api key to .env file
MAPBOX_API_KEY=pk.eyJ1IjoicGR1b****************yZvNpTR_kk1kKqQ

# add to controller
def index
  @flats = Flat.all

  # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
  @markers = @flats.geocoded.map do |flat|
    {
      lat: flat.latitude,
      lng: flat.longitude
      infoWindow: render_to_string(partial: "info_window", locals: { flat: flat })
      image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
    }
end

# add the map to your view
<div id="map"
     style="width: 100%; height: 600px;"
     data-markers="<%= @markers.to_json %>"
     data-mapbox-api-key="<%= ENV['MAPBOX_API_KEY'] %>"></div>

# add the JS
yarn add mapbox-gl

# app/javascript/plugins/init_mapbox.js
# Look at github code and copy that.

# call the funtion in the aplication.js file and import in css
@import 'mapbox-gl/dist/mapbox-gl';

# If pushing to heroku
heroku config:set MAPBOX_API_KEY=pk.eyJ1IjoicGR1b****************yZvNpTR_kk1kKqQ

# Check kitt for adding search and cutsom markers to code









