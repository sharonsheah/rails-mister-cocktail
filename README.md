# Mrs Cocktails

> A public rails web application that allows people all over the world to "mix" cocktails. 

> Objective: Build a three-model Rails app with cocktails, doses, ingredients

> View this project live at https://mrscocktails.herokuapp.com/

# Process

* Draw schema with n:n relationships

* Created rails app

* Implemented Active Record Storage

* Utilise Cloudinary for photo cloud storage

* Installed gem packages (autoprefixer, font-awesome, simple_form etc)

* Used rails helpers (link_to, simple_form_for)

* Test on rails s & rails c

* Implemented UI using HTML, SCSS, aos, Bootstrap

# System dependencies

* Ruby 2.6.6

# Database 

* postgreSQL

# Deployment

* Heroku

# User Experience

## Usability testing

* Methods: informal, first impressions, exploratory tasks, directed tasks

* User complaints of no delete function to reverse actions

* Most users were accessing app from mobile - difficulties with navigating app due to unresponsive design for mobile screens

* When users created a cocktail, they were redirected to cocktails index page. No flow in terms of prompting them to add doses to cocktail

* User complaints of limited ingredient options

## Action & Improvements

* Improved UX by implementing more CRUD actions

* Implemented "add a dose" feature on "/cocktail/:id"

* Implemented responsive design for sm/md/lg screens

* Parsed and seeded ingredients API to provide users with more options

* Copywriting: Utilised humanistic vocabulary/verb "mix" instead of "create"
