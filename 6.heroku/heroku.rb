heroku login

heroku create APPNAME --region eu
git remote -v

git push heroku master

heroku open         # open in your browser
heroku logs --tail  # show the app logs and keep listening

heroku run rails db:migrate  # Run pending migrations in prod
heroku run rails c

# For images
heroku config:set CLOUDINARY_URL=cloudinary://166....
heroku config

# for maps
heroku config:set MAPBOX_API_KEY=pk.eyJ1IjoicGR1b****************yZvNpTR_kk1kKqQ
