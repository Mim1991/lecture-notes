
# .env
CLOUDINARY_URL=cloudinary://298522699261255:Qa1ZfO4syfbOC-***********************8

<%= cl_image_tag("THE_IMAGE_ID_FROM_LIBRARY",
      width: 400, height: 300, crop: :fill) %>>

rails active_storage:install
rails db:migrate

# Image hosting
touch .env
echo '.env*' >> .gitignore

# config/storage.yml
cloudinary:
  service: Cloudinary

# config/environments/development.rb
config.active_storage.service = :cloudinary

class Article < ApplicationRecord
  has_one_attached :photo
end

#remember tp adjust view and controller
 <%= f.input :photos, as: :file, input_html: { multiple: true } %>>
 photos: []



<div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)),
 url('<%= cl_image_path @article.photo.key, height: 300, width: 400, crop: :fill %>')">
  Cool article
</div>

For Heroku, check heroku file



Seeding
You can upload from a URL.

require "open-uri"

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
article = Article.new(title: 'NES', body: "A great console")
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
