# Welcome

This repository contains starter code for a technical assessment. The challenges can be done at home before coming in to discuss with the Bark team or can be done as a pairing exercise at the Bark office. Either way, we don't expect you to put more than an hour or two into coding. We recommend forking the repository and getting it running before starting the challenge if you choose the pairing approach.

# Set up

Fork this repository and clone locally

You'll need [ruby 2.2.4](https://rvm.io/rvm/install) and [rails 5](http://guides.rubyonrails.org/getting_started.html#installing-rails) installed.

Run `bundle install`

Initialize the data with `rake db:reset`

Run the specs with `rspec`

Run the server with `rails s`

View the site at http://localhost:3000


Todo:

*Back End/Full Stack Tasks:*

- Add pagination to index page, to display 5 dogs per page

- Add the ability to for a user to input multiple dog images on an edit form or new dog form

- Associate dogs with owners

- Allow editing only by owner

- Allow users to like other dogs (not their own)

- Allow sorting the index page by number of likes in the last hour

- Display the ad.jpg image (saved at app/assets/images/ad.jpg) after every 2 dogs in the index page, to simulate advertisements in a feed.

*Front End Tasks:*

- On the dog detail page that has more than one profile image, (ex http://localhost:3000/dogs/1), display profile images in a functioning carousel
Feel free to use vanilla JS or a carousel library.

- Use flexbox, CSS grids, or a grid framework to display the homepage's dog profile thumbnails in a responsive grid layout. On mobile, the thumbnails should be 1 across, on tablet they should be 2 across, and on desktop they should be 3 across.

- Use utility classes within a layout framework (Bootstrap, Foundation, Material Design, or another) to add a structured layout to the page without custom CSS.

- Refactor the homepage from its current state as a server-rendered page to a client-rendered page, where you request data from `/dogs.json` and display data from the response. Feel free to use a front-end framework, jQuery, or vanilla JS.

Note: This project is based on a Rails 5 boilerplate scaffold. New styles can be added to app/assets/stylesheets/application.css, and new JS can be added to app/assets/javascripts/application.js. If you choose to add external CSS or JS, you can add a CDN hosted-library to a `<link>` or a `<script>` tag in app/views/layouts/application.html.erb.
