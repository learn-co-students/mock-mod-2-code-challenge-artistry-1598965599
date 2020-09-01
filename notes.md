# How to solve the mock code challenge

## Getting started
1. Run `rails db:migrate` and then `rails db:seed`.
2. Create a new migration table for the joiner model.

  Artist -----< Joiner >----- Instrument

3. Run `rails db:seed` to migrate the new table and update the schema.
4. Create the model, controller, and views for the new joiner model.
5. Write the relationship macros for all 3 models.
6. Add more seed data for the joiner model. Write `Model.destroy_all` at the top, so that your instances don't get duplicated when you run `rails db:seed`.
7. Write the appropraite routes for all the models.
8. Run `rails s` and navigate to `localhost:3000` in your browser to test out your app!

## Let's tackle the deliverables!
> 1) As a user, I should be able to fill out a form to connect an artist with an instrument from the database. This form should be made with at least one dropdown. Upon successfully creating the association, I should be redirected to the artist's show page.

This first deliverable is asking us to create a `new.html.erb` view file for the joiner model where we can create a new joiner instance.
* In `app > views > joiners`, create a new file called `new.html.erb`.
* Open this file and write an `<h1>` heading at the top. Inside the `<h1>` tags, write the title for this page.
* Write a `form_for` using the angry squid `<&=` tags.
* For the Artist and Instrument input fields, use `collection_select` to create a dropdown menu of existing instances.

Now let's write the controller methods and routes.
* In `app > controllers > joiners_controller.rb`, write the following methods: `new` and `create`. Make sure the `redirect_to` in the `create` method points to the artist's show page.
* In `app > controllers > artists_controller.rb`, write the `show` method.
* In `config > routes.rb`, write the routes for `artists#show`, `joiners#new`, and `joiners#create`.