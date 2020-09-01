# How to solve the mock code challenge

## Getting started
1. Run `rails db:migrate` and then `rails db:seed`.
2. Create a new joiner model between the Artist and Instrument models.

  Artist -----< Joiner >----- Instrument

3. Write the relationship macros for all 3 models.
4. Create the controller and views for the joiner model.
5. Add more seed data for the joiner model. Write `Model.destroy_all` at the top, so that your instances don't get duplicated when you run `rails db:seed`.

## Let's tackle the deliverables!