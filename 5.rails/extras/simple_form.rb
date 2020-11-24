
gem 'simple_form'
# Adds simple form in
bundle install
rails generate simple_form:install --bootstrap
@import "bootstrap/scss/bootstrap";
git add .
git commit -m "Rails new with frontend and form gems"


  <%= simple_form_for [island, booking ] do |f| %>
  <%= f.input :start_date, as: :date, html5: true %>
  <%= f.input :end_date, as: :date, html5: true %>
  <%= f.input :number_of_people, input_html: { class: "inline-element" } %>
  <%= f.submit "Book", class: "btn-search btn-search-index btn-island-new" %>
  <% end %>
