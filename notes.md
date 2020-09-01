# How to solve the mock code challenge

## Getting started
1. Run `rails db:migrate` and then `rails db:seed`.
2. Create a new migration table for the joiner model.

  Artist -----< Joiner >----- Instrument

3. Run `rails db:seed` to migrate the new table and update the schema.
4. Create the model, controller, and views for the new joiner model.
5. Write the relationship macros for all 3 models.
6. Add more seed data for the joiner model. Write `Model.destroy_all` at the top, so that your instances don't get duplicated when you run `rails db:seed`.

## Let's tackle the deliverables!
> 1) As a user, I should be able to fill out a form to connect an artist with an instrument from the database. This form should be made with at least one dropdown. Upon successfully creating the association, I should be redirected to the artist's show page.

