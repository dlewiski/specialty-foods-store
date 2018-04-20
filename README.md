# README

## Planning

### Create Database
  * run migrations to create products and reviews table with the necessary columns as outline in the prompt
    ** products: name, cost, origin
    ** reviews: product_id, author, content_body, rating

### Write specs for testing before moving forward with each action action on the following timeline
  * but first validate the that the database is set up correctly
    ** validate presence of every field
    ** validate one to may relationship between products and reviews (products can have many reviews)
    ** validate that a rating can only be between 1-5
    ** validate that the review's content body can only be between 50 and 250 characters

### Create a landing page with a blurb about the company

### Add nav bar
  * put this in the applicaton.html.erb file using implicit rendering
  * landing page will have link to see list of all products

### Add products and reviews resources to route.rb file

### Create products views
  * create the index file to being by showing all the products
  * nav bar in index file will have a link to add a new product and return to the welcome page(this will be an option in every nav bar)
  * user can click on the each product to see its detail
  * once in the detail view of each product, change nav bar to include a delete and update link, as a link to add a review

### Create reviews views
  * have a new.html.erb file which will have the form to add a review on the show product view

### Seed Database
  * use faker to seed 50 products and 250 reviews

### Create Scopes
  * calculate which product has the most reviews
  * determine the 3 most recently added products
  * Show all products made in the USA


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
